; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_fib_table_flush.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_fib_table_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_fib_table = type { i64 }
%struct.dn_hash = type { %struct.dn_zone* }
%struct.dn_zone = type { i32, i32, i32, i32*, %struct.dn_zone* }

@dn_fib_hash_zombies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_fib_table*)* @dn_fib_table_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_table_flush(%struct.dn_fib_table* %0) #0 {
  %2 = alloca %struct.dn_fib_table*, align 8
  %3 = alloca %struct.dn_hash*, align 8
  %4 = alloca %struct.dn_zone*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dn_fib_table* %0, %struct.dn_fib_table** %2, align 8
  %8 = load %struct.dn_fib_table*, %struct.dn_fib_table** %2, align 8
  %9 = getelementptr inbounds %struct.dn_fib_table, %struct.dn_fib_table* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.dn_hash*
  store %struct.dn_hash* %11, %struct.dn_hash** %3, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* @dn_fib_hash_zombies, align 8
  %12 = load %struct.dn_hash*, %struct.dn_hash** %3, align 8
  %13 = getelementptr inbounds %struct.dn_hash, %struct.dn_hash* %12, i32 0, i32 0
  %14 = load %struct.dn_zone*, %struct.dn_zone** %13, align 8
  store %struct.dn_zone* %14, %struct.dn_zone** %4, align 8
  br label %15

15:                                               ; preds = %54, %1
  %16 = load %struct.dn_zone*, %struct.dn_zone** %4, align 8
  %17 = icmp ne %struct.dn_zone* %16, null
  br i1 %17, label %18, label %58

18:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  %19 = load %struct.dn_zone*, %struct.dn_zone** %4, align 8
  %20 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %42, %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load %struct.dn_zone*, %struct.dn_zone** %4, align 8
  %28 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load %struct.dn_zone*, %struct.dn_zone** %4, align 8
  %34 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.dn_hash*, %struct.dn_hash** %3, align 8
  %37 = call i64 @dn_flush_list(i32* %32, i32 %35, %struct.dn_hash* %36)
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  br label %23

45:                                               ; preds = %23
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.dn_zone*, %struct.dn_zone** %4, align 8
  %48 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %45
  %55 = load %struct.dn_zone*, %struct.dn_zone** %4, align 8
  %56 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %55, i32 0, i32 4
  %57 = load %struct.dn_zone*, %struct.dn_zone** %56, align 8
  store %struct.dn_zone* %57, %struct.dn_zone** %4, align 8
  br label %15

58:                                               ; preds = %15
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @dn_flush_list(i32*, i32, %struct.dn_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
