; ModuleID = '/home/carl/AnghaBench/linux/scripts/basic/extr_fixdep.c_is_defined_config.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/basic/extr_fixdep.c_is_defined_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.item = type { i32, i32, i32, %struct.item* }

@hashtab = common dso_local global %struct.item** null, align 8
@HASHSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @is_defined_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_defined_config(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.item*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.item**, %struct.item*** @hashtab, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @HASHSZ, align 4
  %12 = urem i32 %10, %11
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.item*, %struct.item** %9, i64 %13
  %15 = load %struct.item*, %struct.item** %14, align 8
  store %struct.item* %15, %struct.item** %8, align 8
  br label %16

16:                                               ; preds = %41, %3
  %17 = load %struct.item*, %struct.item** %8, align 8
  %18 = icmp ne %struct.item* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load %struct.item*, %struct.item** %8, align 8
  %21 = getelementptr inbounds %struct.item, %struct.item* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.item*, %struct.item** %8, align 8
  %27 = getelementptr inbounds %struct.item, %struct.item* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.item*, %struct.item** %8, align 8
  %33 = getelementptr inbounds %struct.item, %struct.item* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @memcmp(i32 %34, i8* %35, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %46

40:                                               ; preds = %31, %25, %19
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.item*, %struct.item** %8, align 8
  %43 = getelementptr inbounds %struct.item, %struct.item* %42, i32 0, i32 3
  %44 = load %struct.item*, %struct.item** %43, align 8
  store %struct.item* %44, %struct.item** %8, align 8
  br label %16

45:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %39
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @memcmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
