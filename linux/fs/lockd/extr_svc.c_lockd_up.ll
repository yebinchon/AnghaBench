; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svc.c_lockd_up.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svc.c_lockd_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.cred = type { i32 }
%struct.svc_serv = type { i32 }

@nlmsvc_mutex = common dso_local global i32 0, align 4
@nlmsvc_users = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lockd_up(%struct.net* %0, %struct.cred* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.cred* %1, %struct.cred** %4, align 8
  %7 = call i32 @mutex_lock(i32* @nlmsvc_mutex)
  %8 = call %struct.svc_serv* (...) @lockd_create_svc()
  store %struct.svc_serv* %8, %struct.svc_serv** %5, align 8
  %9 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %10 = call i64 @IS_ERR(%struct.svc_serv* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %14 = call i32 @PTR_ERR(%struct.svc_serv* %13)
  store i32 %14, i32* %6, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %17 = load %struct.net*, %struct.net** %3, align 8
  %18 = load %struct.cred*, %struct.cred** %4, align 8
  %19 = call i32 @lockd_up_net(%struct.svc_serv* %16, %struct.net* %17, %struct.cred* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = call i32 (...) @lockd_unregister_notifiers()
  br label %36

24:                                               ; preds = %15
  %25 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %26 = call i32 @lockd_start_svc(%struct.svc_serv* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %31 = load %struct.net*, %struct.net** %3, align 8
  %32 = call i32 @lockd_down_net(%struct.svc_serv* %30, %struct.net* %31)
  br label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @nlmsvc_users, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @nlmsvc_users, align 4
  br label %36

36:                                               ; preds = %33, %29, %22
  %37 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %38 = call i32 @svc_destroy(%struct.svc_serv* %37)
  br label %39

39:                                               ; preds = %36, %12
  %40 = call i32 @mutex_unlock(i32* @nlmsvc_mutex)
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.svc_serv* @lockd_create_svc(...) #1

declare dso_local i64 @IS_ERR(%struct.svc_serv*) #1

declare dso_local i32 @PTR_ERR(%struct.svc_serv*) #1

declare dso_local i32 @lockd_up_net(%struct.svc_serv*, %struct.net*, %struct.cred*) #1

declare dso_local i32 @lockd_unregister_notifiers(...) #1

declare dso_local i32 @lockd_start_svc(%struct.svc_serv*) #1

declare dso_local i32 @lockd_down_net(%struct.svc_serv*, %struct.net*) #1

declare dso_local i32 @svc_destroy(%struct.svc_serv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
