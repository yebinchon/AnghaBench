; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, i64, i32, i32 }
%struct.inode = type { i64, i32*, i32, i32*, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.ubifs_inode = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"fscrypt_get_encryption_info failed: %i\00", align 1
@EPERM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_NOCMTIME = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ubifs_file_address_operations = common dso_local global i32 0, align 4
@ubifs_file_inode_operations = common dso_local global i32 0, align 4
@ubifs_file_operations = common dso_local global i32 0, align 4
@ubifs_dir_inode_operations = common dso_local global i32 0, align 4
@ubifs_dir_operations = common dso_local global i32 0, align 4
@UBIFS_INO_NODE_SZ = common dso_local global i32 0, align 4
@ubifs_symlink_inode_operations = common dso_local global i32 0, align 4
@UBIFS_COMPR_NONE = common dso_local global i32 0, align 4
@INUM_WARN_WATERMARK = common dso_local global i64 0, align 8
@INUM_WATERMARK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"out of inode numbers\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"running out of inode numbers (current %lu, max %u)\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"fscrypt_inherit_context failed: %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ubifs_inode*, align 8
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call i64 @ubifs_crypt_is_encrypted(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = call i32 @fscrypt_get_encryption_info(%struct.inode* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.inode* @ERR_PTR(i32 %24)
  store %struct.inode* %25, %struct.inode** %4, align 8
  br label %195

26:                                               ; preds = %15
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @fscrypt_has_encryption_key(%struct.inode* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.inode* @ERR_PTR(i32 %32)
  store %struct.inode* %33, %struct.inode** %4, align 8
  br label %195

34:                                               ; preds = %26
  store i32 1, i32* %11, align 4
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.inode* @new_inode(i32 %38)
  store %struct.inode* %39, %struct.inode** %9, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %40)
  store %struct.ubifs_inode* %41, %struct.ubifs_inode** %10, align 8
  %42 = load %struct.inode*, %struct.inode** %9, align 8
  %43 = icmp ne %struct.inode* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.inode* @ERR_PTR(i32 %46)
  store %struct.inode* %47, %struct.inode** %4, align 8
  br label %195

48:                                               ; preds = %35
  %49 = load i32, i32* @S_NOCMTIME, align 4
  %50 = load %struct.inode*, %struct.inode** %9, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @inode_init_owner(%struct.inode* %54, %struct.inode* %55, i32 %56)
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = call i32 @current_time(%struct.inode* %58)
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 6
  store i32 %59, i32* %63, align 4
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 7
  store i32 %59, i32* %65, align 8
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @S_IFMT, align 4
  %72 = and i32 %70, %71
  switch i32 %72, label %98 [
    i32 129, label %73
    i32 132, label %82
    i32 130, label %92
    i32 128, label %95
    i32 131, label %95
    i32 134, label %95
    i32 133, label %95
  ]

73:                                               ; preds = %48
  %74 = load %struct.inode*, %struct.inode** %9, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32* @ubifs_file_address_operations, i32** %77, align 8
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  store i32* @ubifs_file_inode_operations, i32** %79, align 8
  %80 = load %struct.inode*, %struct.inode** %9, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 3
  store i32* @ubifs_file_operations, i32** %81, align 8
  br label %100

82:                                               ; preds = %48
  %83 = load %struct.inode*, %struct.inode** %9, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 1
  store i32* @ubifs_dir_inode_operations, i32** %84, align 8
  %85 = load %struct.inode*, %struct.inode** %9, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 3
  store i32* @ubifs_dir_operations, i32** %86, align 8
  %87 = load i32, i32* @UBIFS_INO_NODE_SZ, align 4
  %88 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %89 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load %struct.inode*, %struct.inode** %9, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 2
  store i32 %87, i32* %91, align 8
  br label %100

92:                                               ; preds = %48
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 1
  store i32* @ubifs_symlink_inode_operations, i32** %94, align 8
  br label %100

95:                                               ; preds = %48, %48, %48, %48
  %96 = load %struct.inode*, %struct.inode** %9, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 1
  store i32* @ubifs_file_inode_operations, i32** %97, align 8
  store i32 0, i32* %11, align 4
  br label %100

98:                                               ; preds = %48
  %99 = call i32 (...) @BUG()
  br label %100

100:                                              ; preds = %98, %95, %92, %82, %73
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @inherit_flags(%struct.inode* %101, i32 %102)
  %104 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %105 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = call i32 @ubifs_set_inode_flags(%struct.inode* %106)
  %108 = load i32, i32* %7, align 4
  %109 = call i64 @S_ISREG(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %100
  %112 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %113 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %116 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  br label %121

117:                                              ; preds = %100
  %118 = load i32, i32* @UBIFS_COMPR_NONE, align 4
  %119 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %120 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %117, %111
  %122 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %123 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %125 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %124, i32 0, i32 1
  %126 = call i32 @spin_lock(i32* %125)
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @INUM_WARN_WATERMARK, align 8
  %131 = icmp sge i64 %129, %130
  br i1 %131, label %132, label %158

132:                                              ; preds = %121
  %133 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %134 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @INUM_WATERMARK, align 8
  %137 = icmp sge i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %140 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %139, i32 0, i32 1
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %143 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %142, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %144 = load %struct.inode*, %struct.inode** %9, align 8
  %145 = call i32 @make_bad_inode(%struct.inode* %144)
  %146 = load %struct.inode*, %struct.inode** %9, align 8
  %147 = call i32 @iput(%struct.inode* %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  %150 = call %struct.inode* @ERR_PTR(i32 %149)
  store %struct.inode* %150, %struct.inode** %4, align 8
  br label %195

151:                                              ; preds = %132
  %152 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %153 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %154 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @INUM_WATERMARK, align 8
  %157 = call i32 @ubifs_warn(%struct.ubifs_info* %152, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %155, i64 %156)
  br label %158

158:                                              ; preds = %151, %121
  %159 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %160 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %161, 1
  store i64 %162, i64* %160, align 8
  %163 = load %struct.inode*, %struct.inode** %9, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  %165 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %166 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %166, align 8
  %169 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %170 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %169, i32 0, i32 0
  store i64 %168, i64* %170, align 8
  %171 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %172 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %171, i32 0, i32 1
  %173 = call i32 @spin_unlock(i32* %172)
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %158
  %177 = load %struct.inode*, %struct.inode** %6, align 8
  %178 = load %struct.inode*, %struct.inode** %9, align 8
  %179 = call i32 @fscrypt_inherit_context(%struct.inode* %177, %struct.inode* %178, i32* %11, i32 1)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %176
  %183 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 (%struct.ubifs_info*, i8*, ...) @ubifs_err(%struct.ubifs_info* %183, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  %186 = load %struct.inode*, %struct.inode** %9, align 8
  %187 = call i32 @make_bad_inode(%struct.inode* %186)
  %188 = load %struct.inode*, %struct.inode** %9, align 8
  %189 = call i32 @iput(%struct.inode* %188)
  %190 = load i32, i32* %8, align 4
  %191 = call %struct.inode* @ERR_PTR(i32 %190)
  store %struct.inode* %191, %struct.inode** %4, align 8
  br label %195

192:                                              ; preds = %176
  br label %193

193:                                              ; preds = %192, %158
  %194 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %194, %struct.inode** %4, align 8
  br label %195

195:                                              ; preds = %193, %182, %138, %44, %30, %20
  %196 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %196
}

declare dso_local i64 @ubifs_crypt_is_encrypted(%struct.inode*) #1

declare dso_local i32 @fscrypt_get_encryption_info(%struct.inode*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, ...) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @fscrypt_has_encryption_key(%struct.inode*) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @inherit_flags(%struct.inode*, i32) #1

declare dso_local i32 @ubifs_set_inode_flags(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ubifs_warn(%struct.ubifs_info*, i8*, i64, i64) #1

declare dso_local i32 @fscrypt_inherit_context(%struct.inode*, %struct.inode*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
