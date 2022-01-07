; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_pack_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_pack_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, i32**, i32*, i32, i32)* @pack_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pack_bits(%struct.ubifs_info* %0, i32** %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32**, i32*** %7, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @ubifs_assert(%struct.ubifs_info* %17, i32 %20)
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp sle i32 %23, 32
  %25 = zext i1 %24 to i32
  %26 = call i32 @ubifs_assert(%struct.ubifs_info* %22, i32 %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ubifs_assert(%struct.ubifs_info* %27, i32 %31)
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 8
  %37 = zext i1 %36 to i32
  %38 = call i32 @ubifs_assert(%struct.ubifs_info* %33, i32 %37)
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = ashr i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %5
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 32
  br label %47

47:                                               ; preds = %44, %5
  %48 = phi i1 [ true, %5 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @ubifs_assert(%struct.ubifs_info* %39, i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %12, align 4
  %56 = shl i32 %54, %55
  %57 = load i32*, i32** %11, align 8
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %56
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 8
  br i1 %64, label %65, label %96

65:                                               ; preds = %53
  %66 = load i32, i32* %12, align 4
  %67 = sub nsw i32 8, %66
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %11, align 8
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sgt i32 %72, 16
  br i1 %73, label %74, label %95

74:                                               ; preds = %65
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 8
  store i32 %76, i32* %9, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %11, align 8
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp sgt i32 %79, 24
  br i1 %80, label %81, label %94

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = ashr i32 %82, 8
  store i32 %83, i32* %9, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %11, align 8
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp sgt i32 %86, 32
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32, i32* %9, align 4
  %90 = ashr i32 %89, 8
  store i32 %90, i32* %9, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %11, align 8
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %81
  br label %94

94:                                               ; preds = %93, %74
  br label %95

95:                                               ; preds = %94, %65
  br label %96

96:                                               ; preds = %95, %53
  br label %124

97:                                               ; preds = %47
  %98 = load i32, i32* %9, align 4
  %99 = load i32*, i32** %11, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sgt i32 %100, 8
  br i1 %101, label %102, label %123

102:                                              ; preds = %97
  %103 = load i32, i32* %9, align 4
  %104 = ashr i32 %103, 8
  store i32 %104, i32* %9, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %11, align 8
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp sgt i32 %107, 16
  br i1 %108, label %109, label %122

109:                                              ; preds = %102
  %110 = load i32, i32* %9, align 4
  %111 = ashr i32 %110, 8
  store i32 %111, i32* %9, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %11, align 8
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp sgt i32 %114, 24
  br i1 %115, label %116, label %121

116:                                              ; preds = %109
  %117 = load i32, i32* %9, align 4
  %118 = ashr i32 %117, 8
  store i32 %118, i32* %9, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %11, align 8
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %109
  br label %122

122:                                              ; preds = %121, %102
  br label %123

123:                                              ; preds = %122, %97
  br label %124

124:                                              ; preds = %123, %96
  %125 = load i32, i32* %10, align 4
  %126 = and i32 %125, 7
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32*, i32** %11, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %11, align 8
  br label %132

132:                                              ; preds = %129, %124
  %133 = load i32*, i32** %11, align 8
  %134 = load i32**, i32*** %7, align 8
  store i32* %133, i32** %134, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32*, i32** %8, align 8
  store i32 %135, i32* %136, align 4
  ret void
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
