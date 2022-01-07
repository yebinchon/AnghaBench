; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_find_clear_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_find_clear_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i64, %struct.ocfs2_reservation_map }
%struct.ocfs2_reservation_map = type { i32 }
%struct.ocfs2_dinode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocfs2_alloc_reservation = type { i32 }
%struct.TYPE_6__ = type { i8* }

@OCFS2_RESV_FLAG_TMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_dinode*, i32*, %struct.ocfs2_alloc_reservation*)* @ocfs2_local_alloc_find_clear_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_local_alloc_find_clear_bits(%struct.ocfs2_super* %0, %struct.ocfs2_dinode* %1, i32* %2, %struct.ocfs2_alloc_reservation* %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca %struct.ocfs2_dinode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ocfs2_alloc_reservation*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ocfs2_alloc_reservation, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.ocfs2_reservation_map*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.ocfs2_alloc_reservation* %3, %struct.ocfs2_alloc_reservation** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %13, align 4
  store i8* null, i8** %15, align 8
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %18 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %17, i32 0, i32 1
  store %struct.ocfs2_reservation_map* %18, %struct.ocfs2_reservation_map** %16, align 8
  %19 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %20 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 -1, i32* %10, align 4
  br label %110

26:                                               ; preds = %4
  %27 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %8, align 8
  %28 = icmp ne %struct.ocfs2_alloc_reservation* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  store i32 1, i32* %13, align 4
  %30 = call i32 @ocfs2_resv_init_once(%struct.ocfs2_alloc_reservation* %14)
  %31 = load i32, i32* @OCFS2_RESV_FLAG_TMP, align 4
  %32 = call i32 @ocfs2_resv_set_type(%struct.ocfs2_alloc_reservation* %14, i32 %31)
  store %struct.ocfs2_alloc_reservation* %14, %struct.ocfs2_alloc_reservation** %8, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %16, align 8
  %37 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %8, align 8
  %38 = call i64 @ocfs2_resmap_resv_bits(%struct.ocfs2_reservation_map* %36, %struct.ocfs2_alloc_reservation* %37, i32* %10, i32* %9)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  br label %110

49:                                               ; preds = %33
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %51 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @BUG_ON(i32 %54)
  %56 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %57 = call %struct.TYPE_6__* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %15, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %60 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %61 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %95, %49
  %67 = load i8*, i8** %15, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @ocfs2_find_next_zero_bit(i8* %67, i32 %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = icmp ne i32 %70, -1
  br i1 %71, label %72, label %96

72:                                               ; preds = %66
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %96

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %89

86:                                               ; preds = %77
  store i32 1, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %96

95:                                               ; preds = %89
  br label %66

96:                                               ; preds = %94, %76, %66
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @trace_ocfs2_local_alloc_find_clear_bits_search_bitmap(i32 %97, i32 %98)
  %100 = load i32, i32* %9, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %96
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %10, align 4
  br label %109

108:                                              ; preds = %96
  store i32 -1, i32* %10, align 4
  br label %109

109:                                              ; preds = %108, %104
  br label %110

110:                                              ; preds = %109, %48, %25
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.ocfs2_reservation_map*, %struct.ocfs2_reservation_map** %16, align 8
  %115 = load %struct.ocfs2_alloc_reservation*, %struct.ocfs2_alloc_reservation** %8, align 8
  %116 = call i32 @ocfs2_resv_discard(%struct.ocfs2_reservation_map* %114, %struct.ocfs2_alloc_reservation* %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %6, align 8
  %121 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le32_to_cpu(i32 %124)
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @trace_ocfs2_local_alloc_find_clear_bits(i32 %119, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %10, align 4
  ret i32 %129
}

declare dso_local i32 @ocfs2_resv_init_once(%struct.ocfs2_alloc_reservation*) #1

declare dso_local i32 @ocfs2_resv_set_type(%struct.ocfs2_alloc_reservation*, i32) #1

declare dso_local i64 @ocfs2_resmap_resv_bits(%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*, i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_LOCAL_ALLOC(%struct.ocfs2_dinode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ocfs2_find_next_zero_bit(i8*, i32, i32) #1

declare dso_local i32 @trace_ocfs2_local_alloc_find_clear_bits_search_bitmap(i32, i32) #1

declare dso_local i32 @ocfs2_resv_discard(%struct.ocfs2_reservation_map*, %struct.ocfs2_alloc_reservation*) #1

declare dso_local i32 @trace_ocfs2_local_alloc_find_clear_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
