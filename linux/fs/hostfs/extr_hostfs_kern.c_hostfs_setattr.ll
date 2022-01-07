; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.hostfs_iattr = type { i64, i32, i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@append = common dso_local global i64 0, align 8
@ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@HOSTFS_ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@HOSTFS_ATTR_UID = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@HOSTFS_ATTR_GID = common dso_local global i32 0, align 4
@HOSTFS_ATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@HOSTFS_ATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@HOSTFS_ATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@HOSTFS_ATTR_CTIME = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@HOSTFS_ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@HOSTFS_ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @hostfs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostfs_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.hostfs_iattr, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = call %struct.inode* @d_inode(%struct.dentry* %11)
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = call %struct.TYPE_2__* @HOSTFS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = load %struct.iattr*, %struct.iattr** %5, align 8
  %19 = call i32 @setattr_prepare(%struct.dentry* %17, %struct.iattr* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %220

24:                                               ; preds = %2
  %25 = load i64, i64* @append, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* @ATTR_SIZE, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.iattr*, %struct.iattr** %5, align 8
  %31 = getelementptr inbounds %struct.iattr, %struct.iattr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %27, %24
  %35 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 1
  store i32 0, i32* %35, align 8
  %36 = load %struct.iattr*, %struct.iattr** %5, align 8
  %37 = getelementptr inbounds %struct.iattr, %struct.iattr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ATTR_MODE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i32, i32* @HOSTFS_ATTR_MODE, align 4
  %44 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 8
  %47 = load %struct.iattr*, %struct.iattr** %5, align 8
  %48 = getelementptr inbounds %struct.iattr, %struct.iattr* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 7
  store i32 %49, i32* %50, align 8
  br label %51

51:                                               ; preds = %42, %34
  %52 = load %struct.iattr*, %struct.iattr** %5, align 8
  %53 = getelementptr inbounds %struct.iattr, %struct.iattr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @ATTR_UID, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load i32, i32* @HOSTFS_ATTR_UID, align 4
  %60 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 8
  %63 = load %struct.iattr*, %struct.iattr** %5, align 8
  %64 = getelementptr inbounds %struct.iattr, %struct.iattr* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @from_kuid(i32* @init_user_ns, i32 %65)
  %67 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 6
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %58, %51
  %69 = load %struct.iattr*, %struct.iattr** %5, align 8
  %70 = getelementptr inbounds %struct.iattr, %struct.iattr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ATTR_GID, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %68
  %76 = load i32, i32* @HOSTFS_ATTR_GID, align 4
  %77 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 8
  %80 = load %struct.iattr*, %struct.iattr** %5, align 8
  %81 = getelementptr inbounds %struct.iattr, %struct.iattr* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @from_kgid(i32* @init_user_ns, i32 %82)
  %84 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 5
  store i32 %83, i32* %84, align 8
  br label %85

85:                                               ; preds = %75, %68
  %86 = load %struct.iattr*, %struct.iattr** %5, align 8
  %87 = getelementptr inbounds %struct.iattr, %struct.iattr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ATTR_SIZE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load i32, i32* @HOSTFS_ATTR_SIZE, align 4
  %94 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %93
  store i32 %96, i32* %94, align 8
  %97 = load %struct.iattr*, %struct.iattr** %5, align 8
  %98 = getelementptr inbounds %struct.iattr, %struct.iattr* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 0
  store i64 %99, i64* %100, align 8
  br label %101

101:                                              ; preds = %92, %85
  %102 = load %struct.iattr*, %struct.iattr** %5, align 8
  %103 = getelementptr inbounds %struct.iattr, %struct.iattr* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ATTR_ATIME, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %101
  %109 = load i32, i32* @HOSTFS_ATTR_ATIME, align 4
  %110 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 8
  %113 = load %struct.iattr*, %struct.iattr** %5, align 8
  %114 = getelementptr inbounds %struct.iattr, %struct.iattr* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @timespec64_to_timespec(i32 %115)
  %117 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 4
  store i8* %116, i8** %117, align 8
  br label %118

118:                                              ; preds = %108, %101
  %119 = load %struct.iattr*, %struct.iattr** %5, align 8
  %120 = getelementptr inbounds %struct.iattr, %struct.iattr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ATTR_MTIME, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %118
  %126 = load i32, i32* @HOSTFS_ATTR_MTIME, align 4
  %127 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 8
  %130 = load %struct.iattr*, %struct.iattr** %5, align 8
  %131 = getelementptr inbounds %struct.iattr, %struct.iattr* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @timespec64_to_timespec(i32 %132)
  %134 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 3
  store i8* %133, i8** %134, align 8
  br label %135

135:                                              ; preds = %125, %118
  %136 = load %struct.iattr*, %struct.iattr** %5, align 8
  %137 = getelementptr inbounds %struct.iattr, %struct.iattr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ATTR_CTIME, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %135
  %143 = load i32, i32* @HOSTFS_ATTR_CTIME, align 4
  %144 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %143
  store i32 %146, i32* %144, align 8
  %147 = load %struct.iattr*, %struct.iattr** %5, align 8
  %148 = getelementptr inbounds %struct.iattr, %struct.iattr* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @timespec64_to_timespec(i32 %149)
  %151 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 2
  store i8* %150, i8** %151, align 8
  br label %152

152:                                              ; preds = %142, %135
  %153 = load %struct.iattr*, %struct.iattr** %5, align 8
  %154 = getelementptr inbounds %struct.iattr, %struct.iattr* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ATTR_ATIME_SET, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = load i32, i32* @HOSTFS_ATTR_ATIME_SET, align 4
  %161 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %160
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %159, %152
  %165 = load %struct.iattr*, %struct.iattr** %5, align 8
  %166 = getelementptr inbounds %struct.iattr, %struct.iattr* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ATTR_MTIME_SET, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %164
  %172 = load i32, i32* @HOSTFS_ATTR_MTIME_SET, align 4
  %173 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %7, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %172
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %171, %164
  %177 = load %struct.dentry*, %struct.dentry** %4, align 8
  %178 = call i8* @dentry_name(%struct.dentry* %177)
  store i8* %178, i8** %8, align 8
  %179 = load i8*, i8** %8, align 8
  %180 = icmp eq i8* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %220

184:                                              ; preds = %176
  %185 = load i8*, i8** %8, align 8
  %186 = load i32, i32* %10, align 4
  %187 = call i32 @set_attr(i8* %185, %struct.hostfs_iattr* %7, i32 %186)
  store i32 %187, i32* %9, align 4
  %188 = load i8*, i8** %8, align 8
  %189 = call i32 @__putname(i8* %188)
  %190 = load i32, i32* %9, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %3, align 4
  br label %220

194:                                              ; preds = %184
  %195 = load %struct.iattr*, %struct.iattr** %5, align 8
  %196 = getelementptr inbounds %struct.iattr, %struct.iattr* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @ATTR_SIZE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %194
  %202 = load %struct.iattr*, %struct.iattr** %5, align 8
  %203 = getelementptr inbounds %struct.iattr, %struct.iattr* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.inode*, %struct.inode** %6, align 8
  %206 = call i64 @i_size_read(%struct.inode* %205)
  %207 = icmp ne i64 %204, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %201
  %209 = load %struct.inode*, %struct.inode** %6, align 8
  %210 = load %struct.iattr*, %struct.iattr** %5, align 8
  %211 = getelementptr inbounds %struct.iattr, %struct.iattr* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @truncate_setsize(%struct.inode* %209, i64 %212)
  br label %214

214:                                              ; preds = %208, %201, %194
  %215 = load %struct.inode*, %struct.inode** %6, align 8
  %216 = load %struct.iattr*, %struct.iattr** %5, align 8
  %217 = call i32 @setattr_copy(%struct.inode* %215, %struct.iattr* %216)
  %218 = load %struct.inode*, %struct.inode** %6, align 8
  %219 = call i32 @mark_inode_dirty(%struct.inode* %218)
  store i32 0, i32* %3, align 4
  br label %220

220:                                              ; preds = %214, %192, %181, %22
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @HOSTFS_I(%struct.inode*) #1

declare dso_local i32 @setattr_prepare(%struct.dentry*, %struct.iattr*) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i8* @timespec64_to_timespec(i32) #1

declare dso_local i8* @dentry_name(%struct.dentry*) #1

declare dso_local i32 @set_attr(i8*, %struct.hostfs_iattr*, i32) #1

declare dso_local i32 @__putname(i8*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @truncate_setsize(%struct.inode*, i64) #1

declare dso_local i32 @setattr_copy(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
