; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_unregister_protosw.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_af_inet.c_inet_unregister_protosw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_protosw = type { i32, i32, i32 }

@INET_PROTOSW_PERMANENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Attempt to unregister permanent protocol %d\0A\00", align 1
@inetsw_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_unregister_protosw(%struct.inet_protosw* %0) #0 {
  %2 = alloca %struct.inet_protosw*, align 8
  store %struct.inet_protosw* %0, %struct.inet_protosw** %2, align 8
  %3 = load i32, i32* @INET_PROTOSW_PERMANENT, align 4
  %4 = load %struct.inet_protosw*, %struct.inet_protosw** %2, align 8
  %5 = getelementptr inbounds %struct.inet_protosw, %struct.inet_protosw* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %3, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.inet_protosw*, %struct.inet_protosw** %2, align 8
  %11 = getelementptr inbounds %struct.inet_protosw, %struct.inet_protosw* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %21

14:                                               ; preds = %1
  %15 = call i32 @spin_lock_bh(i32* @inetsw_lock)
  %16 = load %struct.inet_protosw*, %struct.inet_protosw** %2, align 8
  %17 = getelementptr inbounds %struct.inet_protosw, %struct.inet_protosw* %16, i32 0, i32 1
  %18 = call i32 @list_del_rcu(i32* %17)
  %19 = call i32 @spin_unlock_bh(i32* @inetsw_lock)
  %20 = call i32 (...) @synchronize_net()
  br label %21

21:                                               ; preds = %14, %9
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @synchronize_net(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
