; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_fib_table_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_fib_table_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fib_table = type { i64 }
%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32* }
%struct.dn_zone = type { %struct.dn_zone* }
%struct.dn_hash = type { %struct.dn_zone* }

@dn_fib_tables_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_fib_table*, %struct.sk_buff*, %struct.netlink_callback*)* @dn_fib_table_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_table_dump(%struct.dn_fib_table* %0, %struct.sk_buff* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_fib_table*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netlink_callback*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dn_zone*, align 8
  %11 = alloca %struct.dn_hash*, align 8
  store %struct.dn_fib_table* %0, %struct.dn_fib_table** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %7, align 8
  %12 = load %struct.dn_fib_table*, %struct.dn_fib_table** %5, align 8
  %13 = getelementptr inbounds %struct.dn_fib_table, %struct.dn_fib_table* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.dn_hash*
  store %struct.dn_hash* %15, %struct.dn_hash** %11, align 8
  %16 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %17 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = call i32 @read_lock(i32* @dn_fib_tables_lock)
  %22 = load %struct.dn_hash*, %struct.dn_hash** %11, align 8
  %23 = getelementptr inbounds %struct.dn_hash, %struct.dn_hash* %22, i32 0, i32 0
  %24 = load %struct.dn_zone*, %struct.dn_zone** %23, align 8
  store %struct.dn_zone* %24, %struct.dn_zone** %10, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %58, %3
  %26 = load %struct.dn_zone*, %struct.dn_zone** %10, align 8
  %27 = icmp ne %struct.dn_zone* %26, null
  br i1 %27, label %28, label %64

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %58

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %39 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = call i32 @memset(i32* %41, i32 0, i32 -4)
  br label %43

43:                                               ; preds = %37, %33
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %46 = load %struct.dn_fib_table*, %struct.dn_fib_table** %5, align 8
  %47 = load %struct.dn_zone*, %struct.dn_zone** %10, align 8
  %48 = call i64 @dn_hash_dump_zone(%struct.sk_buff* %44, %struct.netlink_callback* %45, %struct.dn_fib_table* %46, %struct.dn_zone* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %53 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %51, i32* %55, align 4
  %56 = call i32 @read_unlock(i32* @dn_fib_tables_lock)
  store i32 -1, i32* %4, align 4
  br label %74

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.dn_zone*, %struct.dn_zone** %10, align 8
  %60 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %59, i32 0, i32 0
  %61 = load %struct.dn_zone*, %struct.dn_zone** %60, align 8
  store %struct.dn_zone* %61, %struct.dn_zone** %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %25

64:                                               ; preds = %25
  %65 = call i32 @read_unlock(i32* @dn_fib_tables_lock)
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.netlink_callback*, %struct.netlink_callback** %7, align 8
  %68 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %66, i32* %70, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %64, %50
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @dn_hash_dump_zone(%struct.sk_buff*, %struct.netlink_callback*, %struct.dn_fib_table*, %struct.dn_zone*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
