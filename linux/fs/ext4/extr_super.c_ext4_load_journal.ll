; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_load_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_load_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_super_block = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"external journal device major/minor numbers have changed\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"INFO: recovery required on readonly filesystem\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"write access unavailable, cannot proceed (try mounting with noload)\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"write access will be enabled during recovery\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"filesystem has both journal and inode journals!\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@JBD2_BARRIER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"barriers disabled\00", align 1
@EXT4_S_ERR_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EXT4_S_ERR_START = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"error loading journal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ext4_super_block*, i64)* @ext4_load_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_load_journal(%struct.super_block* %0, %struct.ext4_super_block* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext4_super_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ext4_super_block* %1, %struct.ext4_super_block** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %15 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le32_to_cpu(i32 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call i32 @ext4_has_feature_journal(%struct.super_block* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %30 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = load i32, i32* @KERN_INFO, align 4
  %37 = call i32 @ext4_msg(%struct.super_block* %35, i32 %36, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %38 = load i64, i64* %7, align 8
  %39 = call i64 @new_decode_dev(i64 %38)
  store i64 %39, i64* %10, align 8
  br label %46

40:                                               ; preds = %27, %3
  %41 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %42 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @le32_to_cpu(i32 %43)
  %45 = call i64 @new_decode_dev(i64 %44)
  store i64 %45, i64* %10, align 8
  br label %46

46:                                               ; preds = %40, %34
  %47 = load %struct.super_block*, %struct.super_block** %5, align 8
  %48 = getelementptr inbounds %struct.super_block, %struct.super_block* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bdev_read_only(i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.super_block*, %struct.super_block** %5, align 8
  %52 = call i64 @ext4_has_feature_journal_needs_recovery(%struct.super_block* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %75

54:                                               ; preds = %46
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = call i64 @sb_rdonly(%struct.super_block* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load %struct.super_block*, %struct.super_block** %5, align 8
  %60 = load i32, i32* @KERN_INFO, align 4
  %61 = call i32 @ext4_msg(%struct.super_block* %59, i32 %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.super_block*, %struct.super_block** %5, align 8
  %66 = load i32, i32* @KERN_ERR, align 4
  %67 = call i32 @ext4_msg(%struct.super_block* %65, i32 %66, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* @EROFS, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  br label %203

70:                                               ; preds = %58
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = load i32, i32* @KERN_INFO, align 4
  %73 = call i32 @ext4_msg(%struct.super_block* %71, i32 %72, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  br label %74

74:                                               ; preds = %70, %54
  br label %75

75:                                               ; preds = %74, %46
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i64, i64* %10, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.super_block*, %struct.super_block** %5, align 8
  %83 = load i32, i32* @KERN_ERR, align 4
  %84 = call i32 @ext4_msg(%struct.super_block* %82, i32 %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %203

87:                                               ; preds = %78, %75
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load %struct.super_block*, %struct.super_block** %5, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call %struct.TYPE_8__* @ext4_get_journal(%struct.super_block* %91, i32 %92)
  store %struct.TYPE_8__* %93, %struct.TYPE_8__** %8, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %203

98:                                               ; preds = %90
  br label %108

99:                                               ; preds = %87
  %100 = load %struct.super_block*, %struct.super_block** %5, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call %struct.TYPE_8__* @ext4_get_dev_journal(%struct.super_block* %100, i64 %101)
  store %struct.TYPE_8__* %102, %struct.TYPE_8__** %8, align 8
  %103 = icmp ne %struct.TYPE_8__* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %203

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107, %98
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @JBD2_BARRIER, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %108
  %116 = load %struct.super_block*, %struct.super_block** %5, align 8
  %117 = load i32, i32* @KERN_INFO, align 4
  %118 = call i32 @ext4_msg(%struct.super_block* %116, i32 %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %119

119:                                              ; preds = %115, %108
  %120 = load %struct.super_block*, %struct.super_block** %5, align 8
  %121 = call i64 @ext4_has_feature_journal_needs_recovery(%struct.super_block* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 @jbd2_journal_wipe(%struct.TYPE_8__* %124, i32 %128)
  store i32 %129, i32* %11, align 4
  br label %130

130:                                              ; preds = %123, %119
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %165, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @EXT4_S_ERR_LEN, align 4
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i8* @kmalloc(i32 %134, i32 %135)
  store i8* %136, i8** %13, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %148

139:                                              ; preds = %133
  %140 = load i8*, i8** %13, align 8
  %141 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %142 = bitcast %struct.ext4_super_block* %141 to i8*
  %143 = load i32, i32* @EXT4_S_ERR_START, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i32, i32* @EXT4_S_ERR_LEN, align 4
  %147 = call i32 @memcpy(i8* %140, i8* %145, i32 %146)
  br label %148

148:                                              ; preds = %139, %133
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %150 = call i32 @jbd2_journal_load(%struct.TYPE_8__* %149)
  store i32 %150, i32* %11, align 4
  %151 = load i8*, i8** %13, align 8
  %152 = icmp ne i8* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %148
  %154 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %155 = bitcast %struct.ext4_super_block* %154 to i8*
  %156 = load i32, i32* @EXT4_S_ERR_START, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %155, i64 %157
  %159 = load i8*, i8** %13, align 8
  %160 = load i32, i32* @EXT4_S_ERR_LEN, align 4
  %161 = call i32 @memcpy(i8* %158, i8* %159, i32 %160)
  br label %162

162:                                              ; preds = %153, %148
  %163 = load i8*, i8** %13, align 8
  %164 = call i32 @kfree(i8* %163)
  br label %165

165:                                              ; preds = %162, %130
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = load %struct.super_block*, %struct.super_block** %5, align 8
  %170 = load i32, i32* @KERN_ERR, align 4
  %171 = call i32 @ext4_msg(%struct.super_block* %169, i32 %170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %173 = call i32 @jbd2_journal_destroy(%struct.TYPE_8__* %172)
  %174 = load i32, i32* %11, align 4
  store i32 %174, i32* %4, align 4
  br label %203

175:                                              ; preds = %165
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %177 = load %struct.super_block*, %struct.super_block** %5, align 8
  %178 = call %struct.TYPE_9__* @EXT4_SB(%struct.super_block* %177)
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  store %struct.TYPE_8__* %176, %struct.TYPE_8__** %179, align 8
  %180 = load %struct.super_block*, %struct.super_block** %5, align 8
  %181 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %182 = call i32 @ext4_clear_journal_err(%struct.super_block* %180, %struct.ext4_super_block* %181)
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %202, label %185

185:                                              ; preds = %175
  %186 = load i64, i64* %7, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %185
  %189 = load i64, i64* %7, align 8
  %190 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %191 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @le32_to_cpu(i32 %192)
  %194 = icmp ne i64 %189, %193
  br i1 %194, label %195, label %202

195:                                              ; preds = %188
  %196 = load i64, i64* %7, align 8
  %197 = call i32 @cpu_to_le32(i64 %196)
  %198 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %199 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 4
  %200 = load %struct.super_block*, %struct.super_block** %5, align 8
  %201 = call i32 @ext4_commit_super(%struct.super_block* %200, i32 1)
  br label %202

202:                                              ; preds = %195, %188, %185, %175
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %202, %168, %104, %95, %81, %64
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_has_feature_journal(%struct.super_block*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i64 @new_decode_dev(i64) #1

declare dso_local i32 @bdev_read_only(i32) #1

declare dso_local i64 @ext4_has_feature_journal_needs_recovery(%struct.super_block*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local %struct.TYPE_8__* @ext4_get_journal(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_8__* @ext4_get_dev_journal(%struct.super_block*, i64) #1

declare dso_local i32 @jbd2_journal_wipe(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @jbd2_journal_load(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @jbd2_journal_destroy(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_clear_journal_err(%struct.super_block*, %struct.ext4_super_block*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @ext4_commit_super(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
