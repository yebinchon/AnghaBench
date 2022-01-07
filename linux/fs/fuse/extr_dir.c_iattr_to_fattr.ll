; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_iattr_to_fattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_iattr_to_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.iattr = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fuse_setattr_in = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATTR_MODE = common dso_local global i32 0, align 4
@FATTR_MODE = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@FATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@FATTR_GID = common dso_local global i32 0, align 4
@ATTR_SIZE = common dso_local global i32 0, align 4
@FATTR_SIZE = common dso_local global i32 0, align 4
@ATTR_ATIME = common dso_local global i32 0, align 4
@FATTR_ATIME = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@FATTR_ATIME_NOW = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@FATTR_MTIME = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@FATTR_MTIME_NOW = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@FATTR_CTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_conn*, %struct.iattr*, %struct.fuse_setattr_in*, i32)* @iattr_to_fattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iattr_to_fattr(%struct.fuse_conn* %0, %struct.iattr* %1, %struct.fuse_setattr_in* %2, i32 %3) #0 {
  %5 = alloca %struct.fuse_conn*, align 8
  %6 = alloca %struct.iattr*, align 8
  %7 = alloca %struct.fuse_setattr_in*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fuse_conn* %0, %struct.fuse_conn** %5, align 8
  store %struct.iattr* %1, %struct.iattr** %6, align 8
  store %struct.fuse_setattr_in* %2, %struct.fuse_setattr_in** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.iattr*, %struct.iattr** %6, align 8
  %11 = getelementptr inbounds %struct.iattr, %struct.iattr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @ATTR_MODE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %4
  %18 = load i32, i32* @FATTR_MODE, align 4
  %19 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %20 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.iattr*, %struct.iattr** %6, align 8
  %24 = getelementptr inbounds %struct.iattr, %struct.iattr* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %27 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %26, i32 0, i32 10
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %17, %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ATTR_UID, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %28
  %34 = load i32, i32* @FATTR_UID, align 4
  %35 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %36 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %40 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iattr*, %struct.iattr** %6, align 8
  %43 = getelementptr inbounds %struct.iattr, %struct.iattr* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @from_kuid(i32 %41, i32 %44)
  %46 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %47 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %33, %28
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @ATTR_GID, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load i32, i32* @FATTR_GID, align 4
  %55 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %56 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.fuse_conn*, %struct.fuse_conn** %5, align 8
  %60 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.iattr*, %struct.iattr** %6, align 8
  %63 = getelementptr inbounds %struct.iattr, %struct.iattr* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @from_kgid(i32 %61, i32 %64)
  %66 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %67 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %53, %48
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ATTR_SIZE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load i32, i32* @FATTR_SIZE, align 4
  %75 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %76 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.iattr*, %struct.iattr** %6, align 8
  %80 = getelementptr inbounds %struct.iattr, %struct.iattr* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %83 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %73, %68
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @ATTR_ATIME, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %84
  %90 = load i32, i32* @FATTR_ATIME, align 4
  %91 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %92 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.iattr*, %struct.iattr** %6, align 8
  %96 = getelementptr inbounds %struct.iattr, %struct.iattr* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %100 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  %101 = load %struct.iattr*, %struct.iattr** %6, align 8
  %102 = getelementptr inbounds %struct.iattr, %struct.iattr* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %106 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @ATTR_ATIME_SET, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %89
  %112 = load i32, i32* @FATTR_ATIME_NOW, align 4
  %113 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %114 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %89
  br label %118

118:                                              ; preds = %117, %84
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @ATTR_MTIME, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %160

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i64 @update_mtime(i32 %124, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %160

128:                                              ; preds = %123
  %129 = load i32, i32* @FATTR_MTIME, align 4
  %130 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %131 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  %134 = load %struct.iattr*, %struct.iattr** %6, align 8
  %135 = getelementptr inbounds %struct.iattr, %struct.iattr* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %139 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load %struct.iattr*, %struct.iattr** %6, align 8
  %141 = getelementptr inbounds %struct.iattr, %struct.iattr* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %145 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @ATTR_MTIME_SET, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %128
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* @FATTR_MTIME_NOW, align 4
  %155 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %156 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %150, %128
  br label %160

160:                                              ; preds = %159, %123, %118
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @ATTR_CTIME, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %186

165:                                              ; preds = %160
  %166 = load i32, i32* %8, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %186

168:                                              ; preds = %165
  %169 = load i32, i32* @FATTR_CTIME, align 4
  %170 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %171 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load %struct.iattr*, %struct.iattr** %6, align 8
  %175 = getelementptr inbounds %struct.iattr, %struct.iattr* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %179 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.iattr*, %struct.iattr** %6, align 8
  %181 = getelementptr inbounds %struct.iattr, %struct.iattr* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.fuse_setattr_in*, %struct.fuse_setattr_in** %7, align 8
  %185 = getelementptr inbounds %struct.fuse_setattr_in, %struct.fuse_setattr_in* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %168, %165, %160
  ret void
}

declare dso_local i32 @from_kuid(i32, i32) #1

declare dso_local i32 @from_kgid(i32, i32) #1

declare dso_local i64 @update_mtime(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
