; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_reuseport_add_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_reuseport_add_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sock_reuseport = type { i32, i32, i32, %struct.sock** }

@reuseport_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reuseport_free_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reuseport_add_sock(%struct.sock* %0, %struct.sock* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock_reuseport*, align 8
  %9 = alloca %struct.sock_reuseport*, align 8
  %10 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rcu_access_pointer(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load %struct.sock*, %struct.sock** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @reuseport_alloc(%struct.sock* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %95

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %3
  %26 = call i32 @spin_lock_bh(i32* @reuseport_lock)
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @lockdep_is_held(i32* @reuseport_lock)
  %31 = call %struct.sock_reuseport* @rcu_dereference_protected(i32 %29, i32 %30)
  store %struct.sock_reuseport* %31, %struct.sock_reuseport** %9, align 8
  %32 = load %struct.sock*, %struct.sock** %5, align 8
  %33 = getelementptr inbounds %struct.sock, %struct.sock* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @lockdep_is_held(i32* @reuseport_lock)
  %36 = call %struct.sock_reuseport* @rcu_dereference_protected(i32 %34, i32 %35)
  store %struct.sock_reuseport* %36, %struct.sock_reuseport** %8, align 8
  %37 = load %struct.sock_reuseport*, %struct.sock_reuseport** %8, align 8
  %38 = icmp ne %struct.sock_reuseport* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %25
  %40 = load %struct.sock_reuseport*, %struct.sock_reuseport** %8, align 8
  %41 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = call i32 @spin_unlock_bh(i32* @reuseport_lock)
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %95

48:                                               ; preds = %39, %25
  %49 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %50 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %53 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %58 = call %struct.sock_reuseport* @reuseport_grow(%struct.sock_reuseport* %57)
  store %struct.sock_reuseport* %58, %struct.sock_reuseport** %9, align 8
  %59 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %60 = icmp ne %struct.sock_reuseport* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = call i32 @spin_unlock_bh(i32* @reuseport_lock)
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %95

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %48
  %67 = load %struct.sock*, %struct.sock** %5, align 8
  %68 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %69 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %68, i32 0, i32 3
  %70 = load %struct.sock**, %struct.sock*** %69, align 8
  %71 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %72 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sock*, %struct.sock** %70, i64 %74
  store %struct.sock* %67, %struct.sock** %75, align 8
  %76 = call i32 (...) @smp_wmb()
  %77 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %78 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.sock*, %struct.sock** %5, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sock_reuseport*, %struct.sock_reuseport** %9, align 8
  %85 = call i32 @rcu_assign_pointer(i32 %83, %struct.sock_reuseport* %84)
  %86 = call i32 @spin_unlock_bh(i32* @reuseport_lock)
  %87 = load %struct.sock_reuseport*, %struct.sock_reuseport** %8, align 8
  %88 = icmp ne %struct.sock_reuseport* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %66
  %90 = load %struct.sock_reuseport*, %struct.sock_reuseport** %8, align 8
  %91 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %90, i32 0, i32 2
  %92 = load i32, i32* @reuseport_free_rcu, align 4
  %93 = call i32 @call_rcu(i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %66
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %61, %44, %22
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @reuseport_alloc(%struct.sock*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sock_reuseport* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sock_reuseport* @reuseport_grow(%struct.sock_reuseport*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sock_reuseport*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
