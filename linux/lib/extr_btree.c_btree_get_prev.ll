; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_get_prev.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_get_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i32, i64* }
%struct.btree_geo = type { i32, i32 }

@MAX_KEYLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @btree_get_prev(%struct.btree_head* %0, %struct.btree_geo* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.btree_head*, align 8
  %6 = alloca %struct.btree_geo*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.btree_head* %0, %struct.btree_head** %5, align 8
  store %struct.btree_geo* %1, %struct.btree_geo** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* null, i64** %12, align 8
  %16 = load i32, i32* @MAX_KEYLEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %21 = load i64*, i64** %7, align 8
  %22 = call i64 @keyzero(%struct.btree_geo* %20, i64* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  store i32 1, i32* %15, align 4
  br label %145

25:                                               ; preds = %3
  %26 = load %struct.btree_head*, %struct.btree_head** %5, align 8
  %27 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* null, i8** %4, align 8
  store i32 1, i32* %15, align 4
  br label %145

31:                                               ; preds = %25
  %32 = load i64*, i64** %7, align 8
  %33 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %34 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @longcpy(i64* %19, i64* %32, i32 %35)
  br label %37

37:                                               ; preds = %138, %31
  %38 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %39 = call i32 @dec_key(%struct.btree_geo* %38, i64* %19)
  %40 = load %struct.btree_head*, %struct.btree_head** %5, align 8
  %41 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  store i64* %42, i64** %10, align 8
  %43 = load %struct.btree_head*, %struct.btree_head** %5, align 8
  %44 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %89, %37
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %92

49:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %53 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @keycmp(%struct.btree_geo* %57, i64* %58, i32 %59, i64* %19)
  %61 = icmp sle i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %67

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %50

67:                                               ; preds = %62, %50
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %70 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %135

74:                                               ; preds = %67
  %75 = load i64*, i64** %10, align 8
  store i64* %75, i64** %11, align 8
  %76 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %77 = load i64*, i64** %10, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i8* @bval(%struct.btree_geo* %76, i64* %77, i32 %78)
  %80 = bitcast i8* %79 to i64*
  store i64* %80, i64** %10, align 8
  %81 = load i64*, i64** %10, align 8
  %82 = icmp ne i64* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %135

84:                                               ; preds = %74
  %85 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %86 = load i64*, i64** %11, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i64* @bkey(%struct.btree_geo* %85, i64* %86, i32 %87)
  store i64* %88, i64** %12, align 8
  br label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %9, align 4
  br label %46

92:                                               ; preds = %46
  %93 = load i64*, i64** %10, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  br label %135

96:                                               ; preds = %92
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %131, %96
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %100 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %97
  %104 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %105 = load i64*, i64** %10, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i64 @keycmp(%struct.btree_geo* %104, i64* %105, i32 %106, i64* %19)
  %108 = icmp sle i64 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %103
  %110 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %111 = load i64*, i64** %10, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i8* @bval(%struct.btree_geo* %110, i64* %111, i32 %112)
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load i64*, i64** %7, align 8
  %117 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %118 = load i64*, i64** %10, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i64* @bkey(%struct.btree_geo* %117, i64* %118, i32 %119)
  %121 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %122 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @longcpy(i64* %116, i64* %120, i32 %123)
  %125 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %126 = load i64*, i64** %10, align 8
  %127 = load i32, i32* %8, align 4
  %128 = call i8* @bval(%struct.btree_geo* %125, i64* %126, i32 %127)
  store i8* %128, i8** %4, align 8
  store i32 1, i32* %15, align 4
  br label %145

129:                                              ; preds = %109
  br label %135

130:                                              ; preds = %103
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  br label %97

134:                                              ; preds = %97
  br label %135

135:                                              ; preds = %134, %129, %95, %83, %73
  %136 = load i64*, i64** %12, align 8
  %137 = icmp ne i64* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = load i64*, i64** %12, align 8
  %140 = load %struct.btree_geo*, %struct.btree_geo** %6, align 8
  %141 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @longcpy(i64* %19, i64* %139, i32 %142)
  store i64* null, i64** %12, align 8
  br label %37

144:                                              ; preds = %135
  store i8* null, i8** %4, align 8
  store i32 1, i32* %15, align 4
  br label %145

145:                                              ; preds = %144, %115, %30, %24
  %146 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %146)
  %147 = load i8*, i8** %4, align 8
  ret i8* %147
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @keyzero(%struct.btree_geo*, i64*) #2

declare dso_local i32 @longcpy(i64*, i64*, i32) #2

declare dso_local i32 @dec_key(%struct.btree_geo*, i64*) #2

declare dso_local i64 @keycmp(%struct.btree_geo*, i64*, i32, i64*) #2

declare dso_local i8* @bval(%struct.btree_geo*, i64*, i32) #2

declare dso_local i64* @bkey(%struct.btree_geo*, i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
