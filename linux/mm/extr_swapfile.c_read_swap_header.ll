; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_read_swap_header.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_read_swap_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, i32, i64, i64 }
%union.swap_header = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64* }
%struct.inode = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"SWAPSPACE2\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Unable to find swap-space signature\0A\00", align 1
@MAX_SWAP_BADPAGES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to handle swap header version %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Empty swap-file\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"Truncating oversized swap area, only using %luk out of %luk\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [44 x i8] c"Swap area shorter than signature indicates\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.swap_info_struct*, %union.swap_header*, %struct.inode*)* @read_swap_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_swap_header(%struct.swap_info_struct* %0, %union.swap_header* %1, %struct.inode* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.swap_info_struct*, align 8
  %6 = alloca %union.swap_header*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %5, align 8
  store %union.swap_header* %1, %union.swap_header** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %12 = load %union.swap_header*, %union.swap_header** %6, align 8
  %13 = bitcast %union.swap_header* %12 to %struct.TYPE_3__*
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @memcmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15, i32 10)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %171

20:                                               ; preds = %3
  %21 = load %union.swap_header*, %union.swap_header** %6, align 8
  %22 = bitcast %union.swap_header* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @swab32(i64 %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %69

27:                                               ; preds = %20
  %28 = load %union.swap_header*, %union.swap_header** %6, align 8
  %29 = bitcast %union.swap_header* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @swab32s(i64* %30)
  %32 = load %union.swap_header*, %union.swap_header** %6, align 8
  %33 = bitcast %union.swap_header* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = call i32 @swab32s(i64* %34)
  %36 = load %union.swap_header*, %union.swap_header** %6, align 8
  %37 = bitcast %union.swap_header* %36 to %struct.TYPE_4__*
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  %39 = call i32 @swab32s(i64* %38)
  %40 = load %union.swap_header*, %union.swap_header** %6, align 8
  %41 = bitcast %union.swap_header* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MAX_SWAP_BADPAGES, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  store i64 0, i64* %4, align 8
  br label %171

47:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %65, %47
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = load %union.swap_header*, %union.swap_header** %6, align 8
  %52 = bitcast %union.swap_header* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %50, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load %union.swap_header*, %union.swap_header** %6, align 8
  %58 = bitcast %union.swap_header* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = call i32 @swab32s(i64* %63)
  br label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %48

68:                                               ; preds = %48
  br label %69

69:                                               ; preds = %68, %20
  %70 = load %union.swap_header*, %union.swap_header** %6, align 8
  %71 = bitcast %union.swap_header* %70 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 1
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %union.swap_header*, %union.swap_header** %6, align 8
  %77 = bitcast %union.swap_header* %76 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %79)
  store i64 0, i64* %4, align 8
  br label %171

81:                                               ; preds = %69
  %82 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %83 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %85 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %84, i32 0, i32 1
  store i32 1, i32* %85, align 4
  %86 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %87 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = call i64 (...) @max_swapfile_size()
  store i64 %88, i64* %9, align 8
  %89 = load %union.swap_header*, %union.swap_header** %6, align 8
  %90 = bitcast %union.swap_header* %89 to %struct.TYPE_4__*
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %11, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %81
  %96 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %171

97:                                               ; preds = %81
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %9, align 8
  %100 = icmp ugt i64 %98, %99
  br i1 %100, label %101, label %113

101:                                              ; preds = %97
  %102 = load i64, i64* %9, align 8
  %103 = load i32, i32* @PAGE_SHIFT, align 4
  %104 = sub nsw i32 %103, 10
  %105 = zext i32 %104 to i64
  %106 = shl i64 %102, %105
  %107 = load i64, i64* %11, align 8
  %108 = load i32, i32* @PAGE_SHIFT, align 4
  %109 = sub nsw i32 %108, 10
  %110 = zext i32 %109 to i64
  %111 = shl i64 %107, %110
  %112 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %106, i64 %111)
  br label %113

113:                                              ; preds = %101, %97
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* %11, align 8
  %116 = icmp ugt i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load i64, i64* %11, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %9, align 8
  %120 = load i64, i64* %9, align 8
  %121 = trunc i64 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i64, i64* @UINT_MAX, align 8
  store i64 %124, i64* %9, align 8
  br label %125

125:                                              ; preds = %123, %117
  br label %126

126:                                              ; preds = %125, %113
  %127 = load i64, i64* %9, align 8
  %128 = sub i64 %127, 1
  %129 = load %struct.swap_info_struct*, %struct.swap_info_struct** %5, align 8
  %130 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %9, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  store i64 0, i64* %4, align 8
  br label %171

134:                                              ; preds = %126
  %135 = load %struct.inode*, %struct.inode** %7, align 8
  %136 = call i32 @i_size_read(%struct.inode* %135)
  %137 = load i32, i32* @PAGE_SHIFT, align 4
  %138 = ashr i32 %136, %137
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %10, align 8
  %140 = load i64, i64* %10, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %10, align 8
  %145 = icmp ugt i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %171

148:                                              ; preds = %142, %134
  %149 = load %union.swap_header*, %union.swap_header** %6, align 8
  %150 = bitcast %union.swap_header* %149 to %struct.TYPE_4__*
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %148
  %155 = load %struct.inode*, %struct.inode** %7, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @S_ISREG(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  store i64 0, i64* %4, align 8
  br label %171

161:                                              ; preds = %154, %148
  %162 = load %union.swap_header*, %union.swap_header** %6, align 8
  %163 = bitcast %union.swap_header* %162 to %struct.TYPE_4__*
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @MAX_SWAP_BADPAGES, align 8
  %167 = icmp ugt i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  store i64 0, i64* %4, align 8
  br label %171

169:                                              ; preds = %161
  %170 = load i64, i64* %9, align 8
  store i64 %170, i64* %4, align 8
  br label %171

171:                                              ; preds = %169, %168, %160, %146, %133, %95, %75, %46, %18
  %172 = load i64, i64* %4, align 8
  ret i64 %172
}

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @swab32(i64) #1

declare dso_local i32 @swab32s(i64*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i64 @max_swapfile_size(...) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
