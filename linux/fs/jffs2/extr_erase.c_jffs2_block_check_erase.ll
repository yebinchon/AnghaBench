; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_erase.c_jffs2_block_check_erase.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_erase.c_jffs2_block_check_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i64, i32 }
%struct.jffs2_eraseblock = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MTD point failed %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"MTD point returned len too short: 0x%zx\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Newly-erased block contained word 0x%lx at offset 0x%08tx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"Failed to allocate page buffer for verifying erase at 0x%08x. Refiling\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Verifying erase at 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [70 x i8] c"Read of newly-erased block at 0x%08x failed: %d. Putting on bad_list\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"Short read from newly-erased block at 0x%08x. Wanted %d, got %zd\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"Newly-erased block contained word 0x%lx at offset 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i64*)* @jffs2_block_check_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_block_check_erase(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.jffs2_eraseblock*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %5, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %6, align 8
  store i64* %2, i64** %7, align 8
  %16 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %17 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %20 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %23 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @mtd_point(i32 %18, i64 %21, i64 %24, i64* %10, i8** %8, i32* null)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %101

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %102

37:                                               ; preds = %30
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %40 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ult i64 %38, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %47 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %50 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @mtd_unpoint(i32 %48, i64 %51, i64 %52)
  br label %102

54:                                               ; preds = %37
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr i8, i8* %55, i64 -8
  %57 = bitcast i8* %56 to i64*
  store i64* %57, i64** %12, align 8
  %58 = load i64, i64* %10, align 8
  %59 = udiv i64 %58, 8
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %67, %54
  %61 = load i64*, i64** %12, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %12, align 8
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, -1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %71

66:                                               ; preds = %60
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %60, label %71

71:                                               ; preds = %67, %65
  %72 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %73 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %76 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %79 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @mtd_unpoint(i32 %74, i64 %77, i64 %80)
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %71
  %85 = load i64*, i64** %12, align 8
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %88 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %91 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %89, %92
  %94 = load i64, i64* %10, align 8
  %95 = mul i64 %94, 8
  %96 = sub i64 %93, %95
  %97 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %86, i64 %96)
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %218

100:                                              ; preds = %71
  store i32 0, i32* %4, align 4
  br label %218

101:                                              ; preds = %3
  br label %102

102:                                              ; preds = %101, %43, %33
  %103 = load i64, i64* @PAGE_SIZE, align 8
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i8* @kmalloc(i64 %103, i32 %104)
  store i8* %105, i8** %8, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %102
  %109 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %110 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i64 %111)
  %113 = load i32, i32* @EAGAIN, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %218

115:                                              ; preds = %102
  %116 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %117 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @jffs2_dbg(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %118)
  %120 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %121 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %9, align 8
  br label %123

123:                                              ; preds = %208, %115
  %124 = load i64, i64* %9, align 8
  %125 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %126 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %129 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %127, %130
  %132 = icmp ult i64 %124, %131
  br i1 %132, label %133, label %213

133:                                              ; preds = %123
  %134 = load i64, i64* @PAGE_SIZE, align 8
  %135 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %136 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %139 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add i64 %137, %140
  %142 = load i64, i64* %9, align 8
  %143 = sub i64 %141, %142
  %144 = call i64 @min(i64 %134, i64 %143)
  store i64 %144, i64* %13, align 8
  %145 = load i64, i64* %9, align 8
  %146 = load i64*, i64** %7, align 8
  store i64 %145, i64* %146, align 8
  %147 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %148 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = load i64, i64* %13, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = call i32 @mtd_read(i32 %149, i64 %150, i64 %151, i64* %10, i8* %152)
  store i32 %153, i32* %11, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %133
  %157 = load i64, i64* %9, align 8
  %158 = load i32, i32* %11, align 4
  %159 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i64 %157, i32 %158)
  %160 = load i32, i32* @EIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %11, align 4
  br label %214

162:                                              ; preds = %133
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* %13, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = load i64, i64* %9, align 8
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %10, align 8
  %170 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0), i64 %167, i64 %168, i64 %169)
  %171 = load i32, i32* @EIO, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %11, align 4
  br label %214

173:                                              ; preds = %162
  store i32 0, i32* %14, align 4
  br label %174

174:                                              ; preds = %203, %173
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %13, align 8
  %178 = icmp ult i64 %176, %177
  br i1 %178, label %179, label %208

179:                                              ; preds = %174
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr i8, i8* %180, i64 %182
  %184 = bitcast i8* %183 to i64*
  store i64* %184, i64** %15, align 8
  %185 = load i64*, i64** %15, align 8
  %186 = load i64, i64* %185, align 8
  %187 = add i64 %186, 1
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %179
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = load i64*, i64** %7, align 8
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, %191
  store i64 %194, i64* %192, align 8
  %195 = load i64*, i64** %15, align 8
  %196 = load i64, i64* %195, align 8
  %197 = load i64*, i64** %7, align 8
  %198 = load i64, i64* %197, align 8
  %199 = call i32 (i8*, i64, ...) @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i64 %196, i64 %198)
  %200 = load i32, i32* @EIO, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %11, align 4
  br label %214

202:                                              ; preds = %179
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %14, align 4
  %205 = sext i32 %204 to i64
  %206 = add i64 %205, 8
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %14, align 4
  br label %174

208:                                              ; preds = %174
  %209 = load i64, i64* %13, align 8
  %210 = load i64, i64* %9, align 8
  %211 = add i64 %210, %209
  store i64 %211, i64* %9, align 8
  %212 = call i32 (...) @cond_resched()
  br label %123

213:                                              ; preds = %123
  store i32 0, i32* %11, align 4
  br label %214

214:                                              ; preds = %213, %189, %166, %156
  %215 = load i8*, i8** %8, align 8
  %216 = call i32 @kfree(i8* %215)
  %217 = load i32, i32* %11, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %214, %108, %100, %84
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local i32 @mtd_point(i32, i64, i64, i64*, i8**, i32*) #1

declare dso_local i32 @jffs2_dbg(i32, i8*, i64) #1

declare dso_local i32 @mtd_unpoint(i32, i64, i64) #1

declare dso_local i32 @pr_warn(i8*, i64, ...) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @mtd_read(i32, i64, i64, i64*, i8*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
