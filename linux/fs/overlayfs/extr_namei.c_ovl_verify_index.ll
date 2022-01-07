; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_verify_index.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_verify_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_fs = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ovl_fh = type { i32 }
%struct.ovl_path = type { %struct.dentry* }
%struct.TYPE_6__ = type { i32, i32 }

@ESTALE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@OVL_XATTR_ORIGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"overlayfs: failed to verify index (%pd2, ftype=%x, err=%i)\0A\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"overlayfs: orphan index entry (%pd2, ftype=%x, nlink=%u)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_verify_index(%struct.ovl_fs* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ovl_fs*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ovl_fh*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ovl_path, align 8
  %9 = alloca %struct.ovl_path*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  store %struct.ovl_fs* %0, %struct.ovl_fs** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.ovl_fh* null, %struct.ovl_fh** %6, align 8
  %12 = bitcast %struct.ovl_path* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  store %struct.ovl_path* %8, %struct.ovl_path** %9, align 8
  store %struct.dentry* null, %struct.dentry** %10, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.TYPE_6__* @d_inode(%struct.dentry* %13)
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %177

17:                                               ; preds = %2
  %18 = load i32, i32* @ESTALE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = call i64 @ovl_is_temp_index(%struct.dentry* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %152

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %152

34:                                               ; preds = %24
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 2
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.ovl_fh* @kzalloc(i64 %43, i32 %44)
  store %struct.ovl_fh* %45, %struct.ovl_fh** %6, align 8
  %46 = load %struct.ovl_fh*, %struct.ovl_fh** %6, align 8
  %47 = icmp ne %struct.ovl_fh* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %34
  br label %152

49:                                               ; preds = %34
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  %52 = load %struct.ovl_fh*, %struct.ovl_fh** %6, align 8
  %53 = bitcast %struct.ovl_fh* %52 to i32*
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i64 @hex2bin(i32* %53, i32 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %152

62:                                               ; preds = %49
  %63 = load %struct.ovl_fh*, %struct.ovl_fh** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i32 @ovl_check_fh_len(%struct.ovl_fh* %63, i64 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %152

69:                                               ; preds = %62
  %70 = load %struct.dentry*, %struct.dentry** %5, align 8
  %71 = call i64 @ovl_is_whiteout(%struct.dentry* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %145

74:                                               ; preds = %69
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  %76 = call i64 @d_is_dir(%struct.dentry* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %80 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %145

85:                                               ; preds = %78, %74
  %86 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %87 = load %struct.dentry*, %struct.dentry** %5, align 8
  %88 = call %struct.dentry* @ovl_index_upper(%struct.ovl_fs* %86, %struct.dentry* %87)
  store %struct.dentry* %88, %struct.dentry** %10, align 8
  %89 = load %struct.dentry*, %struct.dentry** %10, align 8
  %90 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %85
  %93 = load %struct.dentry*, %struct.dentry** %10, align 8
  %94 = call i32 @PTR_ERR(%struct.dentry* %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @ESTALE, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %162

100:                                              ; preds = %92
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* @ESTALE, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106
  br label %152

108:                                              ; preds = %85
  %109 = load %struct.dentry*, %struct.dentry** %10, align 8
  %110 = load i32, i32* @OVL_XATTR_ORIGIN, align 4
  %111 = load %struct.ovl_fh*, %struct.ovl_fh** %6, align 8
  %112 = call i32 @ovl_verify_fh(%struct.dentry* %109, i32 %110, %struct.ovl_fh* %111)
  store i32 %112, i32* %11, align 4
  %113 = load %struct.dentry*, %struct.dentry** %10, align 8
  %114 = call i32 @dput(%struct.dentry* %113)
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %152

118:                                              ; preds = %108
  %119 = load %struct.dentry*, %struct.dentry** %5, align 8
  %120 = call i64 @d_is_dir(%struct.dentry* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %144, label %122

122:                                              ; preds = %118
  %123 = load %struct.dentry*, %struct.dentry** %5, align 8
  %124 = call %struct.TYPE_6__* @d_inode(%struct.dentry* %123)
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %144

128:                                              ; preds = %122
  %129 = load %struct.ovl_fs*, %struct.ovl_fs** %4, align 8
  %130 = load %struct.ovl_fh*, %struct.ovl_fh** %6, align 8
  %131 = load %struct.dentry*, %struct.dentry** %5, align 8
  %132 = call i32 @ovl_check_origin_fh(%struct.ovl_fs* %129, %struct.ovl_fh* %130, i32 0, %struct.dentry* %131, %struct.ovl_path** %9)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %152

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %8, i32 0, i32 0
  %138 = load %struct.dentry*, %struct.dentry** %137, align 8
  %139 = load %struct.dentry*, %struct.dentry** %5, align 8
  %140 = call i64 @ovl_get_nlink(%struct.dentry* %138, %struct.dentry* %139, i32 0)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %162

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143, %122, %118
  br label %145

145:                                              ; preds = %162, %152, %144, %84, %73
  %146 = getelementptr inbounds %struct.ovl_path, %struct.ovl_path* %8, i32 0, i32 0
  %147 = load %struct.dentry*, %struct.dentry** %146, align 8
  %148 = call i32 @dput(%struct.dentry* %147)
  %149 = load %struct.ovl_fh*, %struct.ovl_fh** %6, align 8
  %150 = call i32 @kfree(%struct.ovl_fh* %149)
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %3, align 4
  br label %177

152:                                              ; preds = %135, %117, %107, %68, %61, %48, %33, %23
  %153 = load %struct.dentry*, %struct.dentry** %5, align 8
  %154 = load %struct.dentry*, %struct.dentry** %5, align 8
  %155 = call %struct.TYPE_6__* @d_inode(%struct.dentry* %154)
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @S_IFMT, align 4
  %159 = and i32 %157, %158
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), %struct.dentry* %153, i32 %159, i32 %160)
  br label %145

162:                                              ; preds = %142, %99
  %163 = load %struct.dentry*, %struct.dentry** %5, align 8
  %164 = load %struct.dentry*, %struct.dentry** %5, align 8
  %165 = call %struct.TYPE_6__* @d_inode(%struct.dentry* %164)
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @S_IFMT, align 4
  %169 = and i32 %167, %168
  %170 = load %struct.dentry*, %struct.dentry** %5, align 8
  %171 = call %struct.TYPE_6__* @d_inode(%struct.dentry* %170)
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %163, i32 %169, i32 %173)
  %175 = load i32, i32* @ENOENT, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %11, align 4
  br label %145

177:                                              ; preds = %145, %16
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_6__* @d_inode(%struct.dentry*) #2

declare dso_local i64 @ovl_is_temp_index(%struct.dentry*) #2

declare dso_local %struct.ovl_fh* @kzalloc(i64, i32) #2

declare dso_local i64 @hex2bin(i32*, i32, i64) #2

declare dso_local i32 @ovl_check_fh_len(%struct.ovl_fh*, i64) #2

declare dso_local i64 @ovl_is_whiteout(%struct.dentry*) #2

declare dso_local i64 @d_is_dir(%struct.dentry*) #2

declare dso_local %struct.dentry* @ovl_index_upper(%struct.ovl_fs*, %struct.dentry*) #2

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #2

declare dso_local i32 @PTR_ERR(%struct.dentry*) #2

declare dso_local i32 @ovl_verify_fh(%struct.dentry*, i32, %struct.ovl_fh*) #2

declare dso_local i32 @dput(%struct.dentry*) #2

declare dso_local i32 @ovl_check_origin_fh(%struct.ovl_fs*, %struct.ovl_fh*, i32, %struct.dentry*, %struct.ovl_path**) #2

declare dso_local i64 @ovl_get_nlink(%struct.dentry*, %struct.dentry*, i32) #2

declare dso_local i32 @kfree(%struct.ovl_fh*) #2

declare dso_local i32 @pr_warn_ratelimited(i8*, %struct.dentry*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
