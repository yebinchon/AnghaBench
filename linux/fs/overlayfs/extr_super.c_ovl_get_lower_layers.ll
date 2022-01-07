; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_get_lower_layers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_super.c_ovl_get_lower_layers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ovl_fs = type { i64, i32, i32, %struct.TYPE_4__, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32*, %struct.vfsmount*, %struct.inode* }
%struct.vfsmount = type { i32 }
%struct.inode = type { i32 }
%struct.path = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"lowerdir\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"overlayfs: failed to clone lowerpath\0A\00", align 1
@MNT_READONLY = common dso_local global i32 0, align 4
@MNT_NOATIME = common dso_local global i32 0, align 4
@OVL_XINO_OFF = common dso_local global i64 0, align 8
@OVL_XINO_ON = common dso_local global i64 0, align 8
@OVL_MAX_STACK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"overlayfs: \22xino\22 feature enabled using %d upper inode bits.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ovl_fs*, %struct.path*, i32)* @ovl_get_lower_layers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_get_lower_layers(%struct.super_block* %0, %struct.ovl_fs* %1, %struct.path* %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ovl_fs*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vfsmount*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ovl_fs* %1, %struct.ovl_fs** %6, align 8
  store %struct.path* %2, %struct.path** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kcalloc(i32 %16, i32 4, i32 %17)
  %19 = bitcast i8* %18 to %struct.TYPE_3__*
  %20 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %21 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %20, i32 0, i32 6
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %21, align 8
  %22 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %23 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %22, i32 0, i32 6
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp eq %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %227

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kcalloc(i32 %28, i32 4, i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %33 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %32, i32 0, i32 5
  store i32* %31, i32** %33, align 8
  %34 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %35 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %227

39:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %165, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %168

44:                                               ; preds = %40
  %45 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %46 = load %struct.path*, %struct.path** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.path, %struct.path* %46, i64 %48
  %50 = call i32 @ovl_get_fsid(%struct.ovl_fs* %45, %struct.path* %49)
  store i32 %50, i32* %13, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %227

54:                                               ; preds = %44
  %55 = load %struct.super_block*, %struct.super_block** %5, align 8
  %56 = load %struct.path*, %struct.path** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.path, %struct.path* %56, i64 %58
  %60 = getelementptr inbounds %struct.path, %struct.path* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ovl_setup_trap(%struct.super_block* %55, i32 %61, %struct.inode** %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %227

66:                                               ; preds = %54
  %67 = load %struct.path*, %struct.path** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.path, %struct.path* %67, i64 %69
  %71 = getelementptr inbounds %struct.path, %struct.path* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @ovl_is_inuse(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %77 = call i32 @ovl_report_in_use(%struct.ovl_fs* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %227

81:                                               ; preds = %75
  br label %82

82:                                               ; preds = %81, %66
  %83 = load %struct.path*, %struct.path** %7, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.path, %struct.path* %83, i64 %85
  %87 = call %struct.vfsmount* @clone_private_mount(%struct.path* %86)
  store %struct.vfsmount* %87, %struct.vfsmount** %11, align 8
  %88 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %89 = call i32 @PTR_ERR(%struct.vfsmount* %88)
  store i32 %89, i32* %9, align 4
  %90 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %91 = call i64 @IS_ERR(%struct.vfsmount* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %82
  %94 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.inode*, %struct.inode** %12, align 8
  %96 = call i32 @iput(%struct.inode* %95)
  br label %227

97:                                               ; preds = %82
  %98 = load i32, i32* @MNT_READONLY, align 4
  %99 = load i32, i32* @MNT_NOATIME, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %102 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.inode*, %struct.inode** %12, align 8
  %106 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %107 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %106, i32 0, i32 6
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %110 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  store %struct.inode* %105, %struct.inode** %113, align 8
  %114 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %115 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %116 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %115, i32 0, i32 6
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %119 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  store %struct.vfsmount* %114, %struct.vfsmount** %122, align 8
  %123 = load i32, i32* %10, align 4
  %124 = add i32 %123, 1
  %125 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %126 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %125, i32 0, i32 6
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %129 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  store i32 %124, i32* %132, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %135 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %134, i32 0, i32 6
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %138 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i32 %133, i32* %141, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %97
  %145 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %146 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %153 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %152, i32 0, i32 6
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %156 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  store i32* %151, i32** %159, align 8
  br label %160

160:                                              ; preds = %144, %97
  %161 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %162 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %162, align 8
  br label %165

165:                                              ; preds = %160
  %166 = load i32, i32* %10, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %10, align 4
  br label %40

168:                                              ; preds = %40
  %169 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %170 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %168
  %174 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %175 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %190

178:                                              ; preds = %173
  %179 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %180 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %178, %168
  %184 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %185 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %184, i32 0, i32 2
  store i32 0, i32* %185, align 4
  %186 = load i64, i64* @OVL_XINO_OFF, align 8
  %187 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %188 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  store i64 %186, i64* %189, align 8
  br label %216

190:                                              ; preds = %178, %173
  %191 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %192 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @OVL_XINO_ON, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %215

197:                                              ; preds = %190
  %198 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %199 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %215, label %202

202:                                              ; preds = %197
  %203 = load i32, i32* @OVL_MAX_STACK, align 4
  %204 = call i32 @ilog2(i32 %203)
  %205 = icmp sgt i32 %204, 31
  %206 = zext i1 %205 to i32
  %207 = call i32 @BUILD_BUG_ON(i32 %206)
  %208 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %209 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @ilog2(i32 %210)
  %212 = add nsw i32 %211, 1
  %213 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %214 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 4
  br label %215

215:                                              ; preds = %202, %197, %190
  br label %216

216:                                              ; preds = %215, %183
  %217 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %218 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = load %struct.ovl_fs*, %struct.ovl_fs** %6, align 8
  %223 = getelementptr inbounds %struct.ovl_fs, %struct.ovl_fs* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @pr_info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %224)
  br label %226

226:                                              ; preds = %221, %216
  store i32 0, i32* %9, align 4
  br label %227

227:                                              ; preds = %226, %93, %80, %65, %53, %38, %26
  %228 = load i32, i32* %9, align 4
  ret i32 %228
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ovl_get_fsid(%struct.ovl_fs*, %struct.path*) #1

declare dso_local i32 @ovl_setup_trap(%struct.super_block*, i32, %struct.inode**, i8*) #1

declare dso_local i64 @ovl_is_inuse(i32) #1

declare dso_local i32 @ovl_report_in_use(%struct.ovl_fs*, i8*) #1

declare dso_local %struct.vfsmount* @clone_private_mount(%struct.path*) #1

declare dso_local i32 @PTR_ERR(%struct.vfsmount*) #1

declare dso_local i64 @IS_ERR(%struct.vfsmount*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
