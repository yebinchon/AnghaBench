; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_io.c_generic_swapfile_activate.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_io.c_generic_swapfile_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i64, i64, i64 }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"swapon: swapfile has holes\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_swapfile_activate(%struct.swap_info_struct* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca %struct.swap_info_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.address_space*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32* %2, i32** %6, align 8
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  %23 = load %struct.address_space*, %struct.address_space** %22, align 8
  store %struct.address_space* %23, %struct.address_space** %7, align 8
  %24 = load %struct.address_space*, %struct.address_space** %7, align 8
  %25 = getelementptr inbounds %struct.address_space, %struct.address_space* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %8, align 8
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load i32, i32* %11, align 4
  %32 = lshr i32 %30, %31
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %10, align 8
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = call i32 @i_size_read(%struct.inode* %33)
  %35 = load i32, i32* %11, align 4
  %36 = lshr i32 %34, %35
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %133, %3
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add i32 %38, %39
  %41 = load i32, i32* %13, align 4
  %42 = icmp ule i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %46 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i1 [ false, %37 ], [ %48, %43 ]
  br i1 %50, label %51, label %134

51:                                               ; preds = %49
  %52 = call i32 (...) @cond_resched()
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @bmap(%struct.inode* %53, i32 %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %158

59:                                               ; preds = %51
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub i32 %61, 1
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %133

68:                                               ; preds = %59
  store i32 1, i32* %18, align 4
  br label %69

69:                                               ; preds = %92, %68
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %18, align 4
  %77 = add i32 %75, %76
  %78 = call i32 @bmap(%struct.inode* %74, i32 %77)
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %20, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %158

82:                                               ; preds = %73
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %18, align 4
  %86 = add i32 %84, %85
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* %12, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %133

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %18, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %18, align 4
  br label %69

95:                                               ; preds = %69
  %96 = load i32, i32* @PAGE_SHIFT, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub i32 %96, %97
  %99 = load i32, i32* %19, align 4
  %100 = lshr i32 %99, %98
  store i32 %100, i32* %19, align 4
  %101 = load i64, i64* %10, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %95
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i32, i32* %19, align 4
  store i32 %108, i32* %14, align 4
  br label %109

109:                                              ; preds = %107, %103
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ugt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* %19, align 4
  store i32 %114, i32* %15, align 4
  br label %115

115:                                              ; preds = %113, %109
  br label %116

116:                                              ; preds = %115, %95
  %117 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i32, i32* %19, align 4
  %120 = call i32 @add_swap_extent(%struct.swap_info_struct* %117, i64 %118, i32 1, i32 %119)
  store i32 %120, i32* %17, align 4
  %121 = load i32, i32* %17, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %156

124:                                              ; preds = %116
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %16, align 4
  %128 = load i64, i64* %10, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %10, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add i32 %131, %130
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %124, %88, %65
  br label %37

134:                                              ; preds = %49
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %15, align 4
  %137 = add i32 1, %136
  %138 = load i32, i32* %14, align 4
  %139 = sub i32 %137, %138
  %140 = load i32*, i32** %6, align 8
  store i32 %139, i32* %140, align 4
  %141 = load i64, i64* %10, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %134
  store i64 1, i64* %10, align 8
  br label %144

144:                                              ; preds = %143, %134
  %145 = load i64, i64* %10, align 8
  %146 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %147 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  %148 = load i64, i64* %10, align 8
  %149 = sub i64 %148, 1
  %150 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %151 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load i64, i64* %10, align 8
  %153 = sub i64 %152, 1
  %154 = load %struct.swap_info_struct*, %struct.swap_info_struct** %4, align 8
  %155 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %154, i32 0, i32 2
  store i64 %153, i64* %155, align 8
  br label %156

156:                                              ; preds = %158, %144, %123
  %157 = load i32, i32* %17, align 4
  ret i32 %157

158:                                              ; preds = %81, %58
  %159 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %17, align 4
  br label %156
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @bmap(%struct.inode*, i32) #1

declare dso_local i32 @add_swap_extent(%struct.swap_info_struct*, i64, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
