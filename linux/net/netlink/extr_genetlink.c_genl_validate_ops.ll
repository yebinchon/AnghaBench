; ModuleID = '/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_genl_validate_ops.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlink/extr_genetlink.c_genl_validate_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_family = type { i32, %struct.genl_ops* }
%struct.genl_ops = type { i64, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_family*)* @genl_validate_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genl_validate_ops(%struct.genl_family* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.genl_family*, align 8
  %4 = alloca %struct.genl_ops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.genl_family* %0, %struct.genl_family** %3, align 8
  %8 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %9 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %8, i32 0, i32 1
  %10 = load %struct.genl_ops*, %struct.genl_ops** %9, align 8
  store %struct.genl_ops* %10, %struct.genl_ops** %4, align 8
  %11 = load %struct.genl_family*, %struct.genl_family** %3, align 8
  %12 = getelementptr inbounds %struct.genl_family, %struct.genl_family* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %18 = icmp ne %struct.genl_ops* %17, null
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %1
  %21 = phi i1 [ false, %1 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %89

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %89

32:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %85, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %88

37:                                               ; preds = %33
  %38 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %38, i64 %40
  %42 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %37
  %46 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %46, i64 %48
  %50 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %89

56:                                               ; preds = %45, %37
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %81, %56
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %59
  %64 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %64, i64 %66
  %68 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.genl_ops*, %struct.genl_ops** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %70, i64 %72
  %74 = getelementptr inbounds %struct.genl_ops, %struct.genl_ops* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %69, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %63
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %89

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %59

84:                                               ; preds = %59
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %33

88:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %77, %53, %31, %25
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
