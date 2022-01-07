; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_userns_install.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_user_namespace.c_userns_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.nsproxy = type { i32 }
%struct.ns_common = type { i32 }
%struct.user_namespace = type { i32 }
%struct.cred = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_5__* null, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsproxy*, %struct.ns_common*)* @userns_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userns_install(%struct.nsproxy* %0, %struct.ns_common* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nsproxy*, align 8
  %5 = alloca %struct.ns_common*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  %7 = alloca %struct.cred*, align 8
  store %struct.nsproxy* %0, %struct.nsproxy** %4, align 8
  store %struct.ns_common* %1, %struct.ns_common** %5, align 8
  %8 = load %struct.ns_common*, %struct.ns_common** %5, align 8
  %9 = call %struct.user_namespace* @to_user_ns(%struct.ns_common* %8)
  store %struct.user_namespace* %9, %struct.user_namespace** %6, align 8
  %10 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %11 = call %struct.user_namespace* (...) @current_user_ns()
  %12 = icmp eq %struct.user_namespace* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %18 = call i32 @thread_group_empty(%struct.TYPE_5__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %59

23:                                               ; preds = %16
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %59

33:                                               ; preds = %23
  %34 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %35 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %36 = call i32 @ns_capable(%struct.user_namespace* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %33
  %42 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %42, %struct.cred** %7, align 8
  %43 = load %struct.cred*, %struct.cred** %7, align 8
  %44 = icmp ne %struct.cred* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %59

48:                                               ; preds = %41
  %49 = load %struct.cred*, %struct.cred** %7, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @put_user_ns(i32 %51)
  %53 = load %struct.cred*, %struct.cred** %7, align 8
  %54 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %55 = call i32 @get_user_ns(%struct.user_namespace* %54)
  %56 = call i32 @set_cred_user_ns(%struct.cred* %53, i32 %55)
  %57 = load %struct.cred*, %struct.cred** %7, align 8
  %58 = call i32 @commit_creds(%struct.cred* %57)
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %48, %45, %38, %30, %20, %13
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.user_namespace* @to_user_ns(%struct.ns_common*) #1

declare dso_local %struct.user_namespace* @current_user_ns(...) #1

declare dso_local i32 @thread_group_empty(%struct.TYPE_5__*) #1

declare dso_local i32 @ns_capable(%struct.user_namespace*, i32) #1

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @put_user_ns(i32) #1

declare dso_local i32 @set_cred_user_ns(%struct.cred*, i32) #1

declare dso_local i32 @get_user_ns(%struct.user_namespace*) #1

declare dso_local i32 @commit_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
