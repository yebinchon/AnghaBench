; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_check_ltab_lnum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_check_ltab_lnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"cannot allocate memory for ltab checking\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"LEB %d\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"invalid empty space in LEB %d at %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"invalid free space in LEB %d (free %d, expected %d)\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"invalid dirty space in LEB %d (dirty %d, expected %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32)* @dbg_check_ltab_lnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_check_ltab_lnum(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %21 = call i32 @dbg_is_chk_lprops(%struct.ubifs_info* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %182

24:                                               ; preds = %2
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_NOFS, align 4
  %29 = load i32, i32* @PAGE_KERNEL, align 4
  %30 = call i8* @__vmalloc(i32 %27, i32 %28, i32 %29)
  store i8* %30, i8** %14, align 8
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %35 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %182

36:                                               ; preds = %24
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dbg_lp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ubifs_leb_read(%struct.ubifs_info* %39, i32 %40, i8* %41, i32 0, i32 %44, i32 1)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %178

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49, %63, %170
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %52 = load i8*, i8** %14, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @is_a_node(%struct.ubifs_info* %51, i8* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %148, label %56

56:                                               ; preds = %50
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @get_pad_len(%struct.ubifs_info* %57, i8* %58, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i32, i32* %16, align 4
  %65 = load i8*, i8** %14, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr i8, i8* %65, i64 %66
  store i8* %67, i8** %14, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %50

74:                                               ; preds = %56
  %75 = load i8*, i8** %14, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @dbg_is_all_ff(i8* %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %74
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %83 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %79, %74
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %93 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %91, %94
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %98 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %97, i32 0, i32 2
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %96, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %90
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %111 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %107, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %108, i32 %109, i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %106, %90
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %124 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %15, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %122, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %121
  %133 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %137 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %136, i32 0, i32 2
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %133, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %135, i32 %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %132, %121
  br label %178

148:                                              ; preds = %50
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %150 = load i8*, i8** %14, align 8
  %151 = call i32 @get_lpt_node_type(%struct.ubifs_info* %149, i8* %150, i32* %10)
  store i32 %151, i32* %9, align 4
  %152 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @get_lpt_node_len(%struct.ubifs_info* %152, i32 %153)
  store i32 %154, i32* %11, align 4
  %155 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %159 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sub nsw i32 %160, %161
  %163 = call i32 @dbg_is_node_dirty(%struct.ubifs_info* %155, i32 %156, i32 %157, i32 %162)
  store i32 %163, i32* %12, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %170

166:                                              ; preds = %148
  %167 = load i32, i32* %11, align 4
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %8, align 4
  br label %170

170:                                              ; preds = %166, %148
  %171 = load i32, i32* %11, align 4
  %172 = load i8*, i8** %14, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr i8, i8* %172, i64 %173
  store i8* %174, i8** %14, align 8
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %7, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %7, align 4
  br label %50

178:                                              ; preds = %147, %48
  %179 = load i8*, i8** %13, align 8
  %180 = call i32 @vfree(i8* %179)
  %181 = load i32, i32* %6, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %178, %33, %23
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @dbg_is_chk_lprops(%struct.ubifs_info*) #1

declare dso_local i8* @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, ...) #1

declare dso_local i32 @dbg_lp(i8*, i32) #1

declare dso_local i32 @ubifs_leb_read(%struct.ubifs_info*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @is_a_node(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @get_pad_len(%struct.ubifs_info*, i8*, i32) #1

declare dso_local i32 @dbg_is_all_ff(i8*, i32) #1

declare dso_local i32 @get_lpt_node_type(%struct.ubifs_info*, i8*, i32*) #1

declare dso_local i32 @get_lpt_node_len(%struct.ubifs_info*, i32) #1

declare dso_local i32 @dbg_is_node_dirty(%struct.ubifs_info*, i32, i32, i32) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
