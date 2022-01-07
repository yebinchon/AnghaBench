; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_options.c_dccp_encode_value_var.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_options.c_dccp_encode_value_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DCCP_OPTVAL_MAXLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dccp_encode_value_var(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DCCP_OPTVAL_MAXLEN, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = and i64 %12, 280375465082880
  %14 = lshr i64 %13, 40
  %15 = trunc i64 %14 to i32
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %17, i32** %5, align 8
  store i32 %15, i32* %16, align 4
  br label %18

18:                                               ; preds = %10, %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 4
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = and i64 %23, 1095216660480
  %25 = lshr i64 %24, 32
  %26 = trunc i64 %25 to i32
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 3
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, -16777216
  %35 = lshr i32 %34, 24
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 2
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, 16711680
  %44 = ashr i32 %43, 16
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = and i32 %51, 65280
  %53 = ashr i32 %52, 8
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, 255
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %64

64:                                               ; preds = %59, %56
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
