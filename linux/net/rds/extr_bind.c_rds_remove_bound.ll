; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_bind.c_rds_remove_bound.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_bind.c_rds_remove_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"rs %p unbinding from %pI6c:%d\0A\00", align 1
@bind_hash_table = common dso_local global i32 0, align 4
@ht_parms = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_remove_bound(%struct.rds_sock* %0) #0 {
  %2 = alloca %struct.rds_sock*, align 8
  store %struct.rds_sock* %0, %struct.rds_sock** %2, align 8
  %3 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %4 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %3, i32 0, i32 0
  %5 = call i64 @ipv6_addr_any(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %10 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %11 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %10, i32 0, i32 0
  %12 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %13 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohs(i32 %14)
  %16 = call i32 @rdsdebug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.rds_sock* %9, i32* %11, i32 %15)
  %17 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %18 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %17, i32 0, i32 1
  %19 = load i32, i32* @ht_parms, align 4
  %20 = call i32 @rhashtable_remove_fast(i32* @bind_hash_table, i32* %18, i32 %19)
  %21 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %22 = call i32 @rds_sock_put(%struct.rds_sock* %21)
  %23 = load i32, i32* @in6addr_any, align 4
  %24 = load %struct.rds_sock*, %struct.rds_sock** %2, align 8
  %25 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %8, %7
  ret void
}

declare dso_local i64 @ipv6_addr_any(i32*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_sock*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @rds_sock_put(%struct.rds_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
