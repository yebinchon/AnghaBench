; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_compact_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_z3fold.c_z3fold_compact_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z3fold_header = type { i64, i64, i64, i64, i32 }
%struct.page = type { i32 }

@MIDDLE_CHUNK_MAPPED = common dso_local global i32 0, align 4
@ZHDR_CHUNKS = common dso_local global i64 0, align 8
@BIG_CHUNK_GAP = common dso_local global i64 0, align 8
@TOTAL_CHUNKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z3fold_header*)* @z3fold_compact_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @z3fold_compact_page(%struct.z3fold_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z3fold_header*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i16, align 2
  store %struct.z3fold_header* %0, %struct.z3fold_header** %3, align 8
  %6 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %7 = call %struct.page* @virt_to_page(%struct.z3fold_header* %6)
  store %struct.page* %7, %struct.page** %4, align 8
  %8 = load i32, i32* @MIDDLE_CHUNK_MAPPED, align 4
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %138

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i32 @PageIsolated(%struct.page* %15)
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %138

20:                                               ; preds = %14
  %21 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %22 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %138

26:                                               ; preds = %20
  %27 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %28 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %26
  %32 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %33 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %31
  %37 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %38 = load i64, i64* @ZHDR_CHUNKS, align 8
  %39 = trunc i64 %38 to i16
  %40 = call i32 @mchunk_memmove(%struct.z3fold_header* %37, i16 zeroext %39)
  %41 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %42 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %45 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %47 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %49 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %51 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  store i32 1, i32* %2, align 4
  br label %138

54:                                               ; preds = %31, %26
  %55 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %56 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %54
  %60 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %61 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %59
  %65 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %66 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %69 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ZHDR_CHUNKS, align 8
  %72 = add nsw i64 %70, %71
  %73 = sub nsw i64 %67, %72
  %74 = load i64, i64* @BIG_CHUNK_GAP, align 8
  %75 = icmp sge i64 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %64
  %77 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %78 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %79 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ZHDR_CHUNKS, align 8
  %82 = add nsw i64 %80, %81
  %83 = trunc i64 %82 to i16
  %84 = call i32 @mchunk_memmove(%struct.z3fold_header* %77, i16 zeroext %83)
  %85 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %86 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ZHDR_CHUNKS, align 8
  %89 = add nsw i64 %87, %88
  %90 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %91 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  store i32 1, i32* %2, align 4
  br label %138

92:                                               ; preds = %64, %59, %54
  %93 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %94 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %136

97:                                               ; preds = %92
  %98 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %99 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %136

102:                                              ; preds = %97
  %103 = load i64, i64* @TOTAL_CHUNKS, align 8
  %104 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %105 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %108 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %112 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = sub nsw i64 %103, %114
  %116 = load i64, i64* @BIG_CHUNK_GAP, align 8
  %117 = icmp sge i64 %115, %116
  br i1 %117, label %118, label %136

118:                                              ; preds = %102
  %119 = load i64, i64* @TOTAL_CHUNKS, align 8
  %120 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %121 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %119, %122
  %124 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %125 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %123, %126
  %128 = trunc i64 %127 to i16
  store i16 %128, i16* %5, align 2
  %129 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %130 = load i16, i16* %5, align 2
  %131 = call i32 @mchunk_memmove(%struct.z3fold_header* %129, i16 zeroext %130)
  %132 = load i16, i16* %5, align 2
  %133 = zext i16 %132 to i64
  %134 = load %struct.z3fold_header*, %struct.z3fold_header** %3, align 8
  %135 = getelementptr inbounds %struct.z3fold_header, %struct.z3fold_header* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  store i32 1, i32* %2, align 4
  br label %138

136:                                              ; preds = %102, %97, %92
  br label %137

137:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %137, %118, %76, %36, %25, %19, %13
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.page* @virt_to_page(%struct.z3fold_header*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageIsolated(%struct.page*) #1

declare dso_local i32 @mchunk_memmove(%struct.z3fold_header*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
