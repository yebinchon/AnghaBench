; ModuleID = '/home/carl/AnghaBench/linux/net/extr_socket.c_sock_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/extr_socket.c_sock_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_proto_family = type { i64 }

@NPROTO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"protocol %d >= NPROTO(%d)\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@net_family_lock = common dso_local global i32 0, align 4
@net_families = common dso_local global i32* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"NET: Registered protocol family %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_register(%struct.net_proto_family* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_proto_family*, align 8
  %4 = alloca i32, align 4
  store %struct.net_proto_family* %0, %struct.net_proto_family** %3, align 8
  %5 = load %struct.net_proto_family*, %struct.net_proto_family** %3, align 8
  %6 = getelementptr inbounds %struct.net_proto_family, %struct.net_proto_family* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NPROTO, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.net_proto_family*, %struct.net_proto_family** %3, align 8
  %12 = getelementptr inbounds %struct.net_proto_family, %struct.net_proto_family* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NPROTO, align 8
  %15 = call i32 @pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14)
  %16 = load i32, i32* @ENOBUFS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %48

18:                                               ; preds = %1
  %19 = call i32 @spin_lock(i32* @net_family_lock)
  %20 = load i32*, i32** @net_families, align 8
  %21 = load %struct.net_proto_family*, %struct.net_proto_family** %3, align 8
  %22 = getelementptr inbounds %struct.net_proto_family, %struct.net_proto_family* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @lockdep_is_held(i32* @net_family_lock)
  %27 = call i64 @rcu_dereference_protected(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %41

32:                                               ; preds = %18
  %33 = load i32*, i32** @net_families, align 8
  %34 = load %struct.net_proto_family*, %struct.net_proto_family** %3, align 8
  %35 = getelementptr inbounds %struct.net_proto_family, %struct.net_proto_family* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.net_proto_family*, %struct.net_proto_family** %3, align 8
  %40 = call i32 @rcu_assign_pointer(i32 %38, %struct.net_proto_family* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %32, %29
  %42 = call i32 @spin_unlock(i32* @net_family_lock)
  %43 = load %struct.net_proto_family*, %struct.net_proto_family** %3, align 8
  %44 = getelementptr inbounds %struct.net_proto_family, %struct.net_proto_family* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %10
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @pr_crit(i8*, i64, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.net_proto_family*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
