; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_rename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32, %struct.TYPE_4__*, %struct.dentry* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@NFSD_MAY_REMOVE = common dso_local global i32 0, align 4
@NFSD_MAY_CREATE = common dso_local global i32 0, align 4
@nfserr_perm = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_rename(%struct.svc_rqst* %0, %struct.svc_fh* %1, i8* %2, i32 %3, %struct.svc_fh* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.svc_rqst*, align 8
  %9 = alloca %struct.svc_fh*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.svc_fh*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dentry*, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca %struct.dentry*, align 8
  %18 = alloca %struct.dentry*, align 8
  %19 = alloca %struct.dentry*, align 8
  %20 = alloca %struct.inode*, align 8
  %21 = alloca %struct.inode*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %8, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.svc_fh* %4, %struct.svc_fh** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %24, align 4
  %25 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %26 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %27 = load i32, i32* @S_IFDIR, align 4
  %28 = load i32, i32* @NFSD_MAY_REMOVE, align 4
  %29 = call i64 @fh_verify(%struct.svc_rqst* %25, %struct.svc_fh* %26, i32 %27, i32 %28)
  store i64 %29, i64* %22, align 8
  %30 = load i64, i64* %22, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %7
  br label %223

33:                                               ; preds = %7
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %8, align 8
  %35 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %36 = load i32, i32* @S_IFDIR, align 4
  %37 = load i32, i32* @NFSD_MAY_CREATE, align 4
  %38 = call i64 @fh_verify(%struct.svc_rqst* %34, %struct.svc_fh* %35, i32 %36, i32 %37)
  store i64 %38, i64* %22, align 8
  %39 = load i64, i64* %22, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %223

42:                                               ; preds = %33
  %43 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %44 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %43, i32 0, i32 2
  %45 = load %struct.dentry*, %struct.dentry** %44, align 8
  store %struct.dentry* %45, %struct.dentry** %15, align 8
  %46 = load %struct.dentry*, %struct.dentry** %15, align 8
  %47 = call %struct.inode* @d_inode(%struct.dentry* %46)
  store %struct.inode* %47, %struct.inode** %20, align 8
  %48 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %49 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %48, i32 0, i32 2
  %50 = load %struct.dentry*, %struct.dentry** %49, align 8
  store %struct.dentry* %50, %struct.dentry** %16, align 8
  %51 = load %struct.dentry*, %struct.dentry** %16, align 8
  %52 = call %struct.inode* @d_inode(%struct.dentry* %51)
  store %struct.inode* %52, %struct.inode** %21, align 8
  %53 = load i64, i64* @nfserr_perm, align 8
  store i64 %53, i64* %22, align 8
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %42
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @isdotent(i8* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i64 @isdotent(i8* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %61, %56, %42
  br label %223

70:                                               ; preds = %64
  br label %71

71:                                               ; preds = %217, %70
  %72 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %73 = call i32 @fh_want_write(%struct.svc_fh* %72)
  store i32 %73, i32* %23, align 4
  %74 = load i32, i32* %23, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %23, align 4
  %78 = call i64 @nfserrno(i32 %77)
  store i64 %78, i64* %22, align 8
  br label %223

79:                                               ; preds = %71
  %80 = load %struct.dentry*, %struct.dentry** %16, align 8
  %81 = load %struct.dentry*, %struct.dentry** %15, align 8
  %82 = call %struct.dentry* @lock_rename(%struct.dentry* %80, %struct.dentry* %81)
  store %struct.dentry* %82, %struct.dentry** %19, align 8
  %83 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %84 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %86 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %88 = call i32 @fill_pre_wcc(%struct.svc_fh* %87)
  %89 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %90 = call i32 @fill_pre_wcc(%struct.svc_fh* %89)
  %91 = load i8*, i8** %10, align 8
  %92 = load %struct.dentry*, %struct.dentry** %15, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call %struct.dentry* @lookup_one_len(i8* %91, %struct.dentry* %92, i32 %93)
  store %struct.dentry* %94, %struct.dentry** %17, align 8
  %95 = load %struct.dentry*, %struct.dentry** %17, align 8
  %96 = call i32 @PTR_ERR(%struct.dentry* %95)
  store i32 %96, i32* %23, align 4
  %97 = load %struct.dentry*, %struct.dentry** %17, align 8
  %98 = call i64 @IS_ERR(%struct.dentry* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %79
  br label %195

101:                                              ; preds = %79
  %102 = load i32, i32* @ENOENT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %23, align 4
  %104 = load %struct.dentry*, %struct.dentry** %17, align 8
  %105 = call i64 @d_really_is_negative(%struct.dentry* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %192

108:                                              ; preds = %101
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %23, align 4
  %111 = load %struct.dentry*, %struct.dentry** %17, align 8
  %112 = load %struct.dentry*, %struct.dentry** %19, align 8
  %113 = icmp eq %struct.dentry* %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %192

115:                                              ; preds = %108
  %116 = load i8*, i8** %13, align 8
  %117 = load %struct.dentry*, %struct.dentry** %16, align 8
  %118 = load i32, i32* %14, align 4
  %119 = call %struct.dentry* @lookup_one_len(i8* %116, %struct.dentry* %117, i32 %118)
  store %struct.dentry* %119, %struct.dentry** %18, align 8
  %120 = load %struct.dentry*, %struct.dentry** %18, align 8
  %121 = call i32 @PTR_ERR(%struct.dentry* %120)
  store i32 %121, i32* %23, align 4
  %122 = load %struct.dentry*, %struct.dentry** %18, align 8
  %123 = call i64 @IS_ERR(%struct.dentry* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %115
  br label %192

126:                                              ; preds = %115
  %127 = load i32, i32* @ENOTEMPTY, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %23, align 4
  %129 = load %struct.dentry*, %struct.dentry** %18, align 8
  %130 = load %struct.dentry*, %struct.dentry** %19, align 8
  %131 = icmp eq %struct.dentry* %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %189

133:                                              ; preds = %126
  %134 = load i32, i32* @EXDEV, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %23, align 4
  %136 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %137 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %143 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %142, i32 0, i32 1
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %141, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %133
  br label %189

150:                                              ; preds = %133
  %151 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %152 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %151, i32 0, i32 1
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %158 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %157, i32 0, i32 1
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %156, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %150
  br label %189

165:                                              ; preds = %150
  %166 = load %struct.dentry*, %struct.dentry** %18, align 8
  %167 = call i64 @nfsd_has_cached_files(%struct.dentry* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i32 1, i32* %24, align 4
  br label %192

170:                                              ; preds = %165
  %171 = load %struct.inode*, %struct.inode** %20, align 8
  %172 = load %struct.dentry*, %struct.dentry** %17, align 8
  %173 = load %struct.inode*, %struct.inode** %21, align 8
  %174 = load %struct.dentry*, %struct.dentry** %18, align 8
  %175 = call i32 @vfs_rename(%struct.inode* %171, %struct.dentry* %172, %struct.inode* %173, %struct.dentry* %174, i32* null, i32 0)
  store i32 %175, i32* %23, align 4
  %176 = load i32, i32* %23, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %187, label %178

178:                                              ; preds = %170
  %179 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %180 = call i32 @commit_metadata(%struct.svc_fh* %179)
  store i32 %180, i32* %23, align 4
  %181 = load i32, i32* %23, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %178
  %184 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %185 = call i32 @commit_metadata(%struct.svc_fh* %184)
  store i32 %185, i32* %23, align 4
  br label %186

186:                                              ; preds = %183, %178
  br label %187

187:                                              ; preds = %186, %170
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188, %164, %149, %132
  %190 = load %struct.dentry*, %struct.dentry** %18, align 8
  %191 = call i32 @dput(%struct.dentry* %190)
  br label %192

192:                                              ; preds = %189, %169, %125, %114, %107
  %193 = load %struct.dentry*, %struct.dentry** %17, align 8
  %194 = call i32 @dput(%struct.dentry* %193)
  br label %195

195:                                              ; preds = %192, %100
  %196 = load i32, i32* %23, align 4
  %197 = call i64 @nfserrno(i32 %196)
  store i64 %197, i64* %22, align 8
  %198 = load i32, i32* %24, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %195
  %201 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %202 = call i32 @fill_post_wcc(%struct.svc_fh* %201)
  %203 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %204 = call i32 @fill_post_wcc(%struct.svc_fh* %203)
  br label %205

205:                                              ; preds = %200, %195
  %206 = load %struct.dentry*, %struct.dentry** %16, align 8
  %207 = load %struct.dentry*, %struct.dentry** %15, align 8
  %208 = call i32 @unlock_rename(%struct.dentry* %206, %struct.dentry* %207)
  %209 = load %struct.svc_fh*, %struct.svc_fh** %12, align 8
  %210 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %209, i32 0, i32 0
  store i32 0, i32* %210, align 8
  %211 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %212 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %211, i32 0, i32 0
  store i32 0, i32* %212, align 8
  %213 = load %struct.svc_fh*, %struct.svc_fh** %9, align 8
  %214 = call i32 @fh_drop_write(%struct.svc_fh* %213)
  %215 = load i32, i32* %24, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %205
  store i32 0, i32* %24, align 4
  %218 = load %struct.dentry*, %struct.dentry** %18, align 8
  %219 = call i32 @nfsd_close_cached_files(%struct.dentry* %218)
  %220 = load %struct.dentry*, %struct.dentry** %18, align 8
  %221 = call i32 @dput(%struct.dentry* %220)
  br label %71

222:                                              ; preds = %205
  br label %223

223:                                              ; preds = %222, %76, %69, %41, %32
  %224 = load i64, i64* %22, align 8
  ret i64 %224
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @isdotent(i8*, i32) #1

declare dso_local i32 @fh_want_write(%struct.svc_fh*) #1

declare dso_local i64 @nfserrno(i32) #1

declare dso_local %struct.dentry* @lock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @fill_pre_wcc(%struct.svc_fh*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i64 @nfsd_has_cached_files(%struct.dentry*) #1

declare dso_local i32 @vfs_rename(%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32*, i32) #1

declare dso_local i32 @commit_metadata(%struct.svc_fh*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @fill_post_wcc(%struct.svc_fh*) #1

declare dso_local i32 @unlock_rename(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @fh_drop_write(%struct.svc_fh*) #1

declare dso_local i32 @nfsd_close_cached_files(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
