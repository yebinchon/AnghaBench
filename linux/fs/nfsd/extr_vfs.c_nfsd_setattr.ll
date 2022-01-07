; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_vfs.c_nfsd_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32 }
%struct.inode = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@NFSD_MAY_SATTR = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@NFSD_MAY_WRITE = common dso_local global i32 0, align 4
@NFSD_MAY_OWNER_OVERRIDE = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@nfserr_notsync = common dso_local global i64 0, align 8
@ATTR_CTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd_setattr(%struct.svc_rqst* %0, %struct.svc_fh* %1, %struct.iattr* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.svc_fh*, align 8
  %9 = alloca %struct.iattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.iattr, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %8, align 8
  store %struct.iattr* %2, %struct.iattr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %21 = load i32, i32* @NFSD_MAY_SATTR, align 4
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.iattr*, %struct.iattr** %9, align 8
  %23 = getelementptr inbounds %struct.iattr, %struct.iattr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATTR_SIZE, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %19, align 4
  %27 = load %struct.iattr*, %struct.iattr** %9, align 8
  %28 = getelementptr inbounds %struct.iattr, %struct.iattr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ATTR_SIZE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %5
  %34 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %35 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %14, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* @S_IFREG, align 4
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %33, %5
  %41 = load %struct.iattr*, %struct.iattr** %9, align 8
  %42 = getelementptr inbounds %struct.iattr, %struct.iattr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ATTR_ATIME, align 4
  %45 = load i32, i32* @ATTR_MTIME, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %40
  %50 = load i32, i32* @NFSD_MAY_OWNER_OVERRIDE, align 4
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load %struct.iattr*, %struct.iattr** %9, align 8
  %54 = getelementptr inbounds %struct.iattr, %struct.iattr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ATTR_ATIME_SET, align 4
  %57 = load i32, i32* @ATTR_MTIME_SET, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* @NFSD_MAY_WRITE, align 4
  %63 = load i32, i32* %14, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %61, %49
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %68 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %67, i32 0, i32 0
  %69 = load %struct.dentry*, %struct.dentry** %68, align 8
  %70 = icmp ne %struct.dentry* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %18, align 4
  %73 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %74 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i64 @fh_verify(%struct.svc_rqst* %73, %struct.svc_fh* %74, i32 %75, i32 %76)
  store i64 %77, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %66
  %81 = load i64, i64* %16, align 8
  store i64 %81, i64* %6, align 8
  br label %208

82:                                               ; preds = %66
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %87 = call i32 @fh_want_write(%struct.svc_fh* %86)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %199

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %82
  %93 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %94 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %93, i32 0, i32 0
  %95 = load %struct.dentry*, %struct.dentry** %94, align 8
  store %struct.dentry* %95, %struct.dentry** %12, align 8
  %96 = load %struct.dentry*, %struct.dentry** %12, align 8
  %97 = call %struct.inode* @d_inode(%struct.dentry* %96)
  store %struct.inode* %97, %struct.inode** %13, align 8
  %98 = load %struct.inode*, %struct.inode** %13, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @S_ISLNK(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %92
  %104 = load i32, i32* @ATTR_MODE, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.iattr*, %struct.iattr** %9, align 8
  %107 = getelementptr inbounds %struct.iattr, %struct.iattr* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %103, %92
  %111 = load %struct.iattr*, %struct.iattr** %9, align 8
  %112 = getelementptr inbounds %struct.iattr, %struct.iattr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  store i64 0, i64* %6, align 8
  br label %208

116:                                              ; preds = %110
  %117 = load %struct.inode*, %struct.inode** %13, align 8
  %118 = load %struct.iattr*, %struct.iattr** %9, align 8
  %119 = call i32 @nfsd_sanitize_attrs(%struct.inode* %117, %struct.iattr* %118)
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load i64, i64* %11, align 8
  %124 = load %struct.inode*, %struct.inode** %13, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %123, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i64, i64* @nfserr_notsync, align 8
  store i64 %130, i64* %6, align 8
  br label %208

131:                                              ; preds = %122, %116
  %132 = load i32, i32* %19, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %131
  %135 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %136 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %137 = load %struct.iattr*, %struct.iattr** %9, align 8
  %138 = call i64 @nfsd_get_write_access(%struct.svc_rqst* %135, %struct.svc_fh* %136, %struct.iattr* %137)
  store i64 %138, i64* %16, align 8
  %139 = load i64, i64* %16, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i64, i64* %16, align 8
  store i64 %142, i64* %6, align 8
  br label %208

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %131
  %145 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %146 = call i32 @fh_lock(%struct.svc_fh* %145)
  %147 = load i32, i32* %19, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %181

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.iattr, %struct.iattr* %20, i32 0, i32 0
  %151 = load i32, i32* @ATTR_SIZE, align 4
  %152 = load i32, i32* @ATTR_CTIME, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @ATTR_MTIME, align 4
  %155 = or i32 %153, %154
  store i32 %155, i32* %150, align 4
  %156 = getelementptr inbounds %struct.iattr, %struct.iattr* %20, i32 0, i32 1
  %157 = load %struct.iattr*, %struct.iattr** %9, align 8
  %158 = getelementptr inbounds %struct.iattr, %struct.iattr* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %156, align 4
  %160 = load %struct.dentry*, %struct.dentry** %12, align 8
  %161 = call i32 @notify_change(%struct.dentry* %160, %struct.iattr* %20, i32* null)
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* %17, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %149
  br label %190

165:                                              ; preds = %149
  %166 = load i32, i32* @ATTR_SIZE, align 4
  %167 = xor i32 %166, -1
  %168 = load %struct.iattr*, %struct.iattr** %9, align 8
  %169 = getelementptr inbounds %struct.iattr, %struct.iattr* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %167
  store i32 %171, i32* %169, align 4
  %172 = load %struct.iattr*, %struct.iattr** %9, align 8
  %173 = getelementptr inbounds %struct.iattr, %struct.iattr* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @ATTR_MTIME, align 4
  %176 = xor i32 %175, -1
  %177 = and i32 %174, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %165
  br label %190

180:                                              ; preds = %165
  br label %181

181:                                              ; preds = %180, %144
  %182 = load i32, i32* @ATTR_CTIME, align 4
  %183 = load %struct.iattr*, %struct.iattr** %9, align 8
  %184 = getelementptr inbounds %struct.iattr, %struct.iattr* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load %struct.dentry*, %struct.dentry** %12, align 8
  %188 = load %struct.iattr*, %struct.iattr** %9, align 8
  %189 = call i32 @notify_change(%struct.dentry* %187, %struct.iattr* %188, i32* null)
  store i32 %189, i32* %17, align 4
  br label %190

190:                                              ; preds = %181, %179, %164
  %191 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %192 = call i32 @fh_unlock(%struct.svc_fh* %191)
  %193 = load i32, i32* %19, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load %struct.inode*, %struct.inode** %13, align 8
  %197 = call i32 @put_write_access(%struct.inode* %196)
  br label %198

198:                                              ; preds = %195, %190
  br label %199

199:                                              ; preds = %198, %90
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load %struct.svc_fh*, %struct.svc_fh** %8, align 8
  %204 = call i32 @commit_metadata(%struct.svc_fh* %203)
  store i32 %204, i32* %17, align 4
  br label %205

205:                                              ; preds = %202, %199
  %206 = load i32, i32* %17, align 4
  %207 = call i64 @nfserrno(i32 %206)
  store i64 %207, i64* %6, align 8
  br label %208

208:                                              ; preds = %205, %141, %129, %115, %80
  %209 = load i64, i64* %6, align 8
  ret i64 %209
}

declare dso_local i64 @fh_verify(%struct.svc_rqst*, %struct.svc_fh*, i32, i32) #1

declare dso_local i32 @fh_want_write(%struct.svc_fh*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @nfsd_sanitize_attrs(%struct.inode*, %struct.iattr*) #1

declare dso_local i64 @nfsd_get_write_access(%struct.svc_rqst*, %struct.svc_fh*, %struct.iattr*) #1

declare dso_local i32 @fh_lock(%struct.svc_fh*) #1

declare dso_local i32 @notify_change(%struct.dentry*, %struct.iattr*, i32*) #1

declare dso_local i32 @fh_unlock(%struct.svc_fh*) #1

declare dso_local i32 @put_write_access(%struct.inode*) #1

declare dso_local i32 @commit_metadata(%struct.svc_fh*) #1

declare dso_local i64 @nfserrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
