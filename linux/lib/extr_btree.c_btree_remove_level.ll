; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_remove_level.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_btree.c_btree_remove_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_head = type { i32, i32* }
%struct.btree_geo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.btree_head*, %struct.btree_geo*, i64*, i32)* @btree_remove_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @btree_remove_level(%struct.btree_head* %0, %struct.btree_geo* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.btree_head*, align 8
  %7 = alloca %struct.btree_geo*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.btree_head* %0, %struct.btree_head** %6, align 8
  store %struct.btree_geo* %1, %struct.btree_geo** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %17 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %15, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %22 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %24 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  store i8* null, i8** %5, align 8
  br label %122

25:                                               ; preds = %4
  %26 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %27 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64* @find_level(%struct.btree_head* %26, %struct.btree_geo* %27, i64* %28, i32 %29)
  store i64* %30, i64** %10, align 8
  %31 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %32 = load i64*, i64** %10, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = call i32 @getpos(%struct.btree_geo* %31, i64* %32, i64* %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %36 = load i64*, i64** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @getfill(%struct.btree_geo* %35, i64* %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %49

41:                                               ; preds = %25
  %42 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %43 = load i64*, i64** %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i64*, i64** %8, align 8
  %46 = call i64 @keycmp(%struct.btree_geo* %42, i64* %43, i32 %44, i64* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i8* null, i8** %5, align 8
  br label %122

49:                                               ; preds = %41, %25
  %50 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %51 = load i64*, i64** %10, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i8* @bval(%struct.btree_geo* %50, i64* %51, i32 %52)
  store i8* %53, i8** %14, align 8
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %79, %49
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %82

60:                                               ; preds = %55
  %61 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %62 = load i64*, i64** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @bkey(%struct.btree_geo* %64, i64* %65, i32 %67)
  %69 = call i32 @setkey(%struct.btree_geo* %61, i64* %62, i32 %63, i32 %68)
  %70 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %71 = load i64*, i64** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %74 = load i64*, i64** %10, align 8
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  %77 = call i8* @bval(%struct.btree_geo* %73, i64* %74, i32 %76)
  %78 = call i32 @setval(%struct.btree_geo* %70, i64* %71, i32 %72, i8* %77)
  br label %79

79:                                               ; preds = %60
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %55

82:                                               ; preds = %55
  %83 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %84 = load i64*, i64** %10, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @clearpair(%struct.btree_geo* %83, i64* %84, i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = sub nsw i32 %88, 1
  %90 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %91 = getelementptr inbounds %struct.btree_geo, %struct.btree_geo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %92, 2
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %82
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %98 = getelementptr inbounds %struct.btree_head, %struct.btree_head* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %95
  %102 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %103 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i64*, i64** %10, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 %107, 1
  %109 = call i32 @rebalance(%struct.btree_head* %102, %struct.btree_geo* %103, i64* %104, i32 %105, i64* %106, i32 %108)
  br label %119

110:                                              ; preds = %95
  %111 = load i32, i32* %13, align 4
  %112 = sub nsw i32 %111, 1
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load %struct.btree_head*, %struct.btree_head** %6, align 8
  %116 = load %struct.btree_geo*, %struct.btree_geo** %7, align 8
  %117 = call i32 @btree_shrink(%struct.btree_head* %115, %struct.btree_geo* %116)
  br label %118

118:                                              ; preds = %114, %110
  br label %119

119:                                              ; preds = %118, %101
  br label %120

120:                                              ; preds = %119, %82
  %121 = load i8*, i8** %14, align 8
  store i8* %121, i8** %5, align 8
  br label %122

122:                                              ; preds = %120, %48, %20
  %123 = load i8*, i8** %5, align 8
  ret i8* %123
}

declare dso_local i64* @find_level(%struct.btree_head*, %struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @getpos(%struct.btree_geo*, i64*, i64*) #1

declare dso_local i32 @getfill(%struct.btree_geo*, i64*, i32) #1

declare dso_local i64 @keycmp(%struct.btree_geo*, i64*, i32, i64*) #1

declare dso_local i8* @bval(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @setkey(%struct.btree_geo*, i64*, i32, i32) #1

declare dso_local i32 @bkey(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @setval(%struct.btree_geo*, i64*, i32, i8*) #1

declare dso_local i32 @clearpair(%struct.btree_geo*, i64*, i32) #1

declare dso_local i32 @rebalance(%struct.btree_head*, %struct.btree_geo*, i64*, i32, i64*, i32) #1

declare dso_local i32 @btree_shrink(%struct.btree_head*, %struct.btree_geo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
