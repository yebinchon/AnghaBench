; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_init_sb_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_super.c_init_sb_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32*, i32*, i8**, i32, i32, i8**, i32, %struct.f2fs_super_block* }
%struct.f2fs_super_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@NAT_ENTRY_PER_BLOCK = common dso_local global i32 0, align 4
@NULL_SECNO = common dso_local global i32 0, align 4
@NULL_SEGNO = common dso_local global i8* null, align 8
@BG_GC = common dso_local global i64 0, align 8
@FG_GC = common dso_local global i64 0, align 8
@DEF_MAX_VICTIM_SEARCH = common dso_local global i32 0, align 4
@DEF_DIR_LEVEL = common dso_local global i32 0, align 4
@DEF_CP_INTERVAL = common dso_local global i8* null, align 8
@CP_TIME = common dso_local global i64 0, align 8
@DEF_IDLE_INTERVAL = common dso_local global i8* null, align 8
@REQ_TIME = common dso_local global i64 0, align 8
@DISCARD_TIME = common dso_local global i64 0, align 8
@GC_TIME = common dso_local global i64 0, align 8
@DEF_DISABLE_INTERVAL = common dso_local global i8* null, align 8
@DISABLE_TIME = common dso_local global i64 0, align 8
@DEF_UMOUNT_DISCARD_TIMEOUT = common dso_local global i8* null, align 8
@UMOUNT_DISCARD_TIMEOUT = common dso_local global i64 0, align 8
@SBI_NEED_FSCK = common dso_local global i32 0, align 4
@NR_COUNT_TYPE = common dso_local global i32 0, align 4
@META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @init_sb_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sb_info(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.f2fs_super_block*, align 8
  %4 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %5 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %6 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %5, i32 0, i32 27
  %7 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %6, align 8
  store %struct.f2fs_super_block* %7, %struct.f2fs_super_block** %3, align 8
  %8 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %3, align 8
  %9 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %13 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %3, align 8
  %15 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %19 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %21 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 1, %22
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %25 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %3, align 8
  %27 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %31 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %33 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  %36 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %37 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %3, align 8
  %39 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %43 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %3, align 8
  %45 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %49 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 8
  %50 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %3, align 8
  %51 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %55 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %3, align 8
  %57 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = sdiv i32 %59, 2
  %61 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %62 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %60, %63
  %65 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %68 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %67, i32 0, i32 8
  store i32 %66, i32* %68, align 8
  %69 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %3, align 8
  %70 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le32_to_cpu(i32 %71)
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %74 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %73, i32 0, i32 9
  store i32 %72, i32* %74, align 4
  %75 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %3, align 8
  %76 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %80 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %79, i32 0, i32 10
  store i32 %78, i32* %80, align 8
  %81 = load %struct.f2fs_super_block*, %struct.f2fs_super_block** %3, align 8
  %82 = getelementptr inbounds %struct.f2fs_super_block, %struct.f2fs_super_block* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le32_to_cpu(i32 %83)
  %85 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %86 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @NULL_SECNO, align 4
  %88 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %89 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %88, i32 0, i32 26
  store i32 %87, i32* %89, align 8
  %90 = load i8*, i8** @NULL_SEGNO, align 8
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %92 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %91, i32 0, i32 25
  %93 = load i8**, i8*** %92, align 8
  %94 = load i64, i64* @BG_GC, align 8
  %95 = getelementptr inbounds i8*, i8** %93, i64 %94
  store i8* %90, i8** %95, align 8
  %96 = load i8*, i8** @NULL_SEGNO, align 8
  %97 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %98 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %97, i32 0, i32 25
  %99 = load i8**, i8*** %98, align 8
  %100 = load i64, i64* @FG_GC, align 8
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  store i8* %96, i8** %101, align 8
  %102 = load i32, i32* @DEF_MAX_VICTIM_SEARCH, align 4
  %103 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %104 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %103, i32 0, i32 24
  store i32 %102, i32* %104, align 4
  %105 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %106 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %109 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %108, i32 0, i32 12
  store i32 %107, i32* %109, align 8
  %110 = load i32, i32* @DEF_DIR_LEVEL, align 4
  %111 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %112 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %111, i32 0, i32 23
  store i32 %110, i32* %112, align 8
  %113 = load i8*, i8** @DEF_CP_INTERVAL, align 8
  %114 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %115 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %114, i32 0, i32 22
  %116 = load i8**, i8*** %115, align 8
  %117 = load i64, i64* @CP_TIME, align 8
  %118 = getelementptr inbounds i8*, i8** %116, i64 %117
  store i8* %113, i8** %118, align 8
  %119 = load i8*, i8** @DEF_IDLE_INTERVAL, align 8
  %120 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %121 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %120, i32 0, i32 22
  %122 = load i8**, i8*** %121, align 8
  %123 = load i64, i64* @REQ_TIME, align 8
  %124 = getelementptr inbounds i8*, i8** %122, i64 %123
  store i8* %119, i8** %124, align 8
  %125 = load i8*, i8** @DEF_IDLE_INTERVAL, align 8
  %126 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %127 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %126, i32 0, i32 22
  %128 = load i8**, i8*** %127, align 8
  %129 = load i64, i64* @DISCARD_TIME, align 8
  %130 = getelementptr inbounds i8*, i8** %128, i64 %129
  store i8* %125, i8** %130, align 8
  %131 = load i8*, i8** @DEF_IDLE_INTERVAL, align 8
  %132 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %133 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %132, i32 0, i32 22
  %134 = load i8**, i8*** %133, align 8
  %135 = load i64, i64* @GC_TIME, align 8
  %136 = getelementptr inbounds i8*, i8** %134, i64 %135
  store i8* %131, i8** %136, align 8
  %137 = load i8*, i8** @DEF_DISABLE_INTERVAL, align 8
  %138 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %139 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %138, i32 0, i32 22
  %140 = load i8**, i8*** %139, align 8
  %141 = load i64, i64* @DISABLE_TIME, align 8
  %142 = getelementptr inbounds i8*, i8** %140, i64 %141
  store i8* %137, i8** %142, align 8
  %143 = load i8*, i8** @DEF_UMOUNT_DISCARD_TIMEOUT, align 8
  %144 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %145 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %144, i32 0, i32 22
  %146 = load i8**, i8*** %145, align 8
  %147 = load i64, i64* @UMOUNT_DISCARD_TIMEOUT, align 8
  %148 = getelementptr inbounds i8*, i8** %146, i64 %147
  store i8* %143, i8** %148, align 8
  %149 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %150 = load i32, i32* @SBI_NEED_FSCK, align 4
  %151 = call i32 @clear_sbi_flag(%struct.f2fs_sb_info* %149, i32 %150)
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %164, %1
  %153 = load i32, i32* %4, align 4
  %154 = load i32, i32* @NR_COUNT_TYPE, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %152
  %157 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %158 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %157, i32 0, i32 21
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = call i32 @atomic_set(i32* %162, i32 0)
  br label %164

164:                                              ; preds = %156
  %165 = load i32, i32* %4, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %4, align 4
  br label %152

167:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %168

168:                                              ; preds = %180, %167
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* @META, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %183

172:                                              ; preds = %168
  %173 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %174 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %173, i32 0, i32 20
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %4, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = call i32 @atomic_set(i32* %178, i32 0)
  br label %180

180:                                              ; preds = %172
  %181 = load i32, i32* %4, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %4, align 4
  br label %168

183:                                              ; preds = %168
  %184 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %185 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %184, i32 0, i32 19
  %186 = call i32 @INIT_LIST_HEAD(i32* %185)
  %187 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %188 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %187, i32 0, i32 18
  %189 = call i32 @mutex_init(i32* %188)
  %190 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %191 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %190, i32 0, i32 17
  %192 = call i32 @init_rwsem(i32* %191)
  %193 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %194 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %193, i32 0, i32 16
  %195 = call i32 @spin_lock_init(i32* %194)
  %196 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %197 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %196, i32 0, i32 15
  store i64 0, i64* %197, align 8
  %198 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %199 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %198, i32 0, i32 14
  %200 = call i32 @spin_lock_init(i32* %199)
  %201 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %202 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %201, i32 0, i32 13
  %203 = call i32 @init_rwsem(i32* %202)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @clear_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_rwsem(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
