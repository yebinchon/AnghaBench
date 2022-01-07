; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_gen_stats.c_gnet_stats_copy.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_gen_stats.c_gnet_stats_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gnet_dump = type { i64, i32*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gnet_dump*, i32, i8*, i32, i32)* @gnet_stats_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gnet_stats_copy(%struct.gnet_dump* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gnet_dump* %0, %struct.gnet_dump** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %13 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @nla_put_64bit(i32 %14, i32 %15, i32 %16, i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %23

22:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %42

23:                                               ; preds = %21
  %24 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %25 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %30 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @spin_unlock_bh(i64 %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %35 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kfree(i32* %36)
  %38 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %39 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %41 = getelementptr inbounds %struct.gnet_dump, %struct.gnet_dump* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  store i32 -1, i32* %6, align 4
  br label %42

42:                                               ; preds = %33, %22
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i64 @nla_put_64bit(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
