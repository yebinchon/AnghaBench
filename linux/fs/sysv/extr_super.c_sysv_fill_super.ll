; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_sysv_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_super.c_sysv_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 (i32, %struct.buffer_head*)* }
%struct.buffer_head = type { i32 }
%struct.super_block = type { i32, i32, i64, %struct.sysv_sb_info* }
%struct.sysv_sb_info = type { %struct.buffer_head*, %struct.buffer_head*, i32, i64, %struct.super_block* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@flavours = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"oldfs: cannot read superblock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"VFS: unable to find oldfs superblock on device %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"VFS: oldfs: unsupported block size (%dKb)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @sysv_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysv_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.sysv_sb_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i32 0, i32* %12, align 4
  %14 = call i32 @BUILD_BUG_ON(i32 1)
  %15 = call i32 @BUILD_BUG_ON(i32 1)
  %16 = call i32 @BUILD_BUG_ON(i32 1)
  %17 = call i32 @BUILD_BUG_ON(i32 1)
  %18 = call i32 @BUILD_BUG_ON(i32 1)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sysv_sb_info* @kzalloc(i32 40, i32 %19)
  store %struct.sysv_sb_info* %20, %struct.sysv_sb_info** %10, align 8
  %21 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %22 = icmp ne %struct.sysv_sb_info* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %180

26:                                               ; preds = %3
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %29 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %28, i32 0, i32 4
  store %struct.super_block* %27, %struct.super_block** %29, align 8
  %30 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %31 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %33 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %32, i32 0, i32 2
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 3
  store %struct.sysv_sb_info* %35, %struct.sysv_sb_info** %37, align 8
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @U32_MAX, align 4
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = load i32, i32* @BLOCK_SIZE, align 4
  %45 = call i32 @sb_set_blocksize(%struct.super_block* %43, i32 %44)
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %82, %26
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flavours, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %48)
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %51, %46
  %56 = phi i1 [ false, %46 ], [ %54, %51 ]
  br i1 %56, label %57, label %85

57:                                               ; preds = %55
  %58 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %59 = call i32 @brelse(%struct.buffer_head* %58)
  %60 = load %struct.super_block*, %struct.super_block** %5, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flavours, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call %struct.buffer_head* @sb_bread(%struct.super_block* %60, i64 %66)
  store %struct.buffer_head* %67, %struct.buffer_head** %9, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %69 = icmp ne %struct.buffer_head* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %57
  br label %82

71:                                               ; preds = %57
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** @flavours, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32 (i32, %struct.buffer_head*)*, i32 (i32, %struct.buffer_head*)** %76, align 8
  %78 = load %struct.super_block*, %struct.super_block** %5, align 8
  %79 = call i32 @SYSV_SB(%struct.super_block* %78)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %81 = call i32 %77(i32 %79, %struct.buffer_head* %80)
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %71, %70
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %46

85:                                               ; preds = %55
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  br label %158

89:                                               ; preds = %85
  %90 = load i32, i32* %12, align 4
  switch i32 %90, label %123 [
    i32 1, label %91
    i32 2, label %108
    i32 3, label %110
  ]

91:                                               ; preds = %89
  %92 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %93 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 1
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %11, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %98 = call i32 @brelse(%struct.buffer_head* %97)
  %99 = load %struct.super_block*, %struct.super_block** %5, align 8
  %100 = call i32 @sb_set_blocksize(%struct.super_block* %99, i32 512)
  %101 = load %struct.super_block*, %struct.super_block** %5, align 8
  %102 = load i64, i64* %11, align 8
  %103 = call %struct.buffer_head* @sb_bread(%struct.super_block* %101, i64 %102)
  store %struct.buffer_head* %103, %struct.buffer_head** %8, align 8
  %104 = load %struct.super_block*, %struct.super_block** %5, align 8
  %105 = load i64, i64* %11, align 8
  %106 = add i64 %105, 1
  %107 = call %struct.buffer_head* @sb_bread(%struct.super_block* %104, i64 %106)
  store %struct.buffer_head* %107, %struct.buffer_head** %9, align 8
  br label %124

108:                                              ; preds = %89
  %109 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %109, %struct.buffer_head** %8, align 8
  br label %124

110:                                              ; preds = %89
  %111 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %112 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 1
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %11, align 8
  %116 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %117 = call i32 @brelse(%struct.buffer_head* %116)
  %118 = load %struct.super_block*, %struct.super_block** %5, align 8
  %119 = call i32 @sb_set_blocksize(%struct.super_block* %118, i32 2048)
  %120 = load %struct.super_block*, %struct.super_block** %5, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call %struct.buffer_head* @sb_bread(%struct.super_block* %120, i64 %121)
  store %struct.buffer_head* %122, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %122, %struct.buffer_head** %8, align 8
  br label %124

123:                                              ; preds = %89
  br label %169

124:                                              ; preds = %110, %108, %91
  %125 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %126 = icmp ne %struct.buffer_head* %125, null
  br i1 %126, label %127, label %144

127:                                              ; preds = %124
  %128 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %129 = icmp ne %struct.buffer_head* %128, null
  br i1 %129, label %130, label %144

130:                                              ; preds = %127
  %131 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %132 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %133 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %132, i32 0, i32 1
  store %struct.buffer_head* %131, %struct.buffer_head** %133, align 8
  %134 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %135 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %136 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %135, i32 0, i32 0
  store %struct.buffer_head* %134, %struct.buffer_head** %136, align 8
  %137 = load %struct.super_block*, %struct.super_block** %5, align 8
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i64 @complete_read_super(%struct.super_block* %137, i32 %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %180

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %127, %124
  %145 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %146 = call i32 @brelse(%struct.buffer_head* %145)
  %147 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %148 = call i32 @brelse(%struct.buffer_head* %147)
  %149 = load %struct.super_block*, %struct.super_block** %5, align 8
  %150 = load i32, i32* @BLOCK_SIZE, align 4
  %151 = call i32 @sb_set_blocksize(%struct.super_block* %149, i32 %150)
  %152 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %153

153:                                              ; preds = %179, %168, %144
  %154 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %10, align 8
  %155 = call i32 @kfree(%struct.sysv_sb_info* %154)
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %180

158:                                              ; preds = %88
  %159 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %160 = call i32 @brelse(%struct.buffer_head* %159)
  %161 = load i32, i32* %7, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = load %struct.super_block*, %struct.super_block** %5, align 8
  %165 = getelementptr inbounds %struct.super_block, %struct.super_block* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %163, %158
  br label %153

169:                                              ; preds = %123
  %170 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %171 = call i32 @brelse(%struct.buffer_head* %170)
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %169
  %175 = load i32, i32* %12, align 4
  %176 = sub nsw i32 %175, 2
  %177 = shl i32 1, %176
  %178 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %174, %169
  br label %153

180:                                              ; preds = %153, %142, %23
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local %struct.sysv_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i32 @SYSV_SB(%struct.super_block*) #1

declare dso_local i64 @complete_read_super(%struct.super_block*, i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @kfree(%struct.sysv_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
