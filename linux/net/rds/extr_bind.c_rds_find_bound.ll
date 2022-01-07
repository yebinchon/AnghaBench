; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_bind.c_rds_find_bound.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_bind.c_rds_find_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_3__ = type { i32 }

@RDS_BOUND_KEY_LEN = common dso_local global i32 0, align 4
@bind_hash_table = common dso_local global i32 0, align 4
@ht_parms = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"returning rs %p for %pI6c:%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rds_sock* @rds_find_bound(%struct.in6_addr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rds_sock*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @RDS_BOUND_KEY_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @__rds_create_bind_key(i32* %13, %struct.in6_addr* %14, i32 %15, i32 %16)
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load i32, i32* @ht_parms, align 4
  %20 = call %struct.rds_sock* @rhashtable_lookup(i32* @bind_hash_table, i32* %13, i32 %19)
  store %struct.rds_sock* %20, %struct.rds_sock** %9, align 8
  %21 = load %struct.rds_sock*, %struct.rds_sock** %9, align 8
  %22 = icmp ne %struct.rds_sock* %21, null
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = load %struct.rds_sock*, %struct.rds_sock** %9, align 8
  %25 = call %struct.TYPE_3__* @rds_rs_to_sk(%struct.rds_sock* %24)
  %26 = load i32, i32* @SOCK_DEAD, align 4
  %27 = call i64 @sock_flag(%struct.TYPE_3__* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.rds_sock*, %struct.rds_sock** %9, align 8
  %31 = call %struct.TYPE_3__* @rds_rs_to_sk(%struct.rds_sock* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @refcount_inc_not_zero(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %29, %23
  store %struct.rds_sock* null, %struct.rds_sock** %9, align 8
  br label %36

36:                                               ; preds = %35, %29, %3
  %37 = call i32 (...) @rcu_read_unlock()
  %38 = load %struct.rds_sock*, %struct.rds_sock** %9, align 8
  %39 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ntohs(i32 %40)
  %42 = call i32 @rdsdebug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.rds_sock* %38, %struct.in6_addr* %39, i32 %41)
  %43 = load %struct.rds_sock*, %struct.rds_sock** %9, align 8
  %44 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %44)
  ret %struct.rds_sock* %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__rds_create_bind_key(i32*, %struct.in6_addr*, i32, i32) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.rds_sock* @rhashtable_lookup(i32*, i32*, i32) #2

declare dso_local i64 @sock_flag(%struct.TYPE_3__*, i32) #2

declare dso_local %struct.TYPE_3__* @rds_rs_to_sk(%struct.rds_sock*) #2

declare dso_local i32 @refcount_inc_not_zero(i32*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i32 @rdsdebug(i8*, %struct.rds_sock*, %struct.in6_addr*, i32) #2

declare dso_local i32 @ntohs(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
