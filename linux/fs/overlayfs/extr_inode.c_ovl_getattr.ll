; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_inode.c_ovl_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64 }
%struct.kstat = type { i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cred = type { i32 }
%struct.ovl_layer = type { i32 }

@STATX_INO = common dso_local global i32 0, align 4
@STATX_BLOCKS = common dso_local global i32 0, align 4
@STATX_NLINK = common dso_local global i32 0, align 4
@OVL_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.path, align 8
  %12 = alloca %struct.cred*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ovl_layer*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.kstat, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.kstat, align 4
  %21 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.path*, %struct.path** %5, align 8
  %23 = getelementptr inbounds %struct.path, %struct.path* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.dentry*
  store %struct.dentry* %25, %struct.dentry** %9, align 8
  %26 = load %struct.dentry*, %struct.dentry** %9, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISDIR(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.dentry*, %struct.dentry** %9, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ovl_same_sb(i32 %34)
  store i32 %35, i32* %14, align 4
  store %struct.ovl_layer* null, %struct.ovl_layer** %15, align 8
  store i32 0, i32* %17, align 4
  %36 = load %struct.dentry*, %struct.dentry** %9, align 8
  %37 = call i32 @ovl_is_metacopy_dentry(%struct.dentry* %36)
  store i32 %37, i32* %17, align 4
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = call i32 @ovl_path_real(%struct.dentry* %38, %struct.path* %11)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.cred* @ovl_override_creds(i32 %42)
  store %struct.cred* %43, %struct.cred** %12, align 8
  %44 = load %struct.kstat*, %struct.kstat** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @vfs_getattr(%struct.path* %11, %struct.kstat* %44, i32 %45, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %4
  br label %191

51:                                               ; preds = %4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load %struct.dentry*, %struct.dentry** %9, align 8
  %59 = getelementptr inbounds %struct.dentry, %struct.dentry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @ovl_xino_bits(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %155

63:                                               ; preds = %57, %54, %51
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @OVL_TYPE_UPPER(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load %struct.dentry*, %struct.dentry** %9, align 8
  %69 = call %struct.ovl_layer* @ovl_layer_lower(%struct.dentry* %68)
  store %struct.ovl_layer* %69, %struct.ovl_layer** %15, align 8
  br label %136

70:                                               ; preds = %63
  %71 = load i32, i32* %10, align 4
  %72 = call i64 @OVL_TYPE_ORIGIN(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %135

74:                                               ; preds = %70
  %75 = load i32, i32* @STATX_INO, align 4
  %76 = load i32, i32* @STATX_BLOCKS, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* @STATX_NLINK, align 4
  br label %83

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = or i32 %77, %84
  store i32 %85, i32* %19, align 4
  %86 = load %struct.dentry*, %struct.dentry** %9, align 8
  %87 = call i32 @ovl_path_lower(%struct.dentry* %86, %struct.path* %11)
  %88 = load i32, i32* %19, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @vfs_getattr(%struct.path* %11, %struct.kstat* %18, i32 %88, i32 %89)
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %16, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %83
  br label %191

94:                                               ; preds = %83
  %95 = load i32, i32* @OVL_INDEX, align 4
  %96 = load %struct.dentry*, %struct.dentry** %9, align 8
  %97 = call i32 @d_inode(%struct.dentry* %96)
  %98 = call i64 @ovl_test_flag(i32 %95, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %94
  %101 = load %struct.dentry*, %struct.dentry** %9, align 8
  %102 = getelementptr inbounds %struct.dentry, %struct.dentry* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @ovl_verify_lower(i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %100
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %120

113:                                              ; preds = %109, %106, %94
  %114 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.kstat*, %struct.kstat** %6, align 8
  %117 = getelementptr inbounds %struct.kstat, %struct.kstat* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load %struct.dentry*, %struct.dentry** %9, align 8
  %119 = call %struct.ovl_layer* @ovl_layer_lower(%struct.dentry* %118)
  store %struct.ovl_layer* %119, %struct.ovl_layer** %15, align 8
  br label %120

120:                                              ; preds = %113, %109, %100
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.dentry*, %struct.dentry** %9, align 8
  %127 = call i64 @ovl_dentry_lowerdata(%struct.dentry* %126)
  %128 = icmp eq i64 %125, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.kstat, %struct.kstat* %18, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.kstat*, %struct.kstat** %6, align 8
  %133 = getelementptr inbounds %struct.kstat, %struct.kstat* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  store i32 0, i32* %17, align 4
  br label %134

134:                                              ; preds = %129, %123, %120
  br label %135

135:                                              ; preds = %134, %70
  br label %136

136:                                              ; preds = %135, %67
  %137 = load i32, i32* %17, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %136
  %140 = load i32, i32* @STATX_BLOCKS, align 4
  store i32 %140, i32* %21, align 4
  %141 = load %struct.dentry*, %struct.dentry** %9, align 8
  %142 = call i32 @ovl_path_lowerdata(%struct.dentry* %141, %struct.path* %11)
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @vfs_getattr(%struct.path* %11, %struct.kstat* %20, i32 %143, i32 %144)
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %191

149:                                              ; preds = %139
  %150 = getelementptr inbounds %struct.kstat, %struct.kstat* %20, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.kstat*, %struct.kstat** %6, align 8
  %153 = getelementptr inbounds %struct.kstat, %struct.kstat* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %149, %136
  br label %155

155:                                              ; preds = %154, %57
  %156 = load %struct.dentry*, %struct.dentry** %9, align 8
  %157 = load %struct.kstat*, %struct.kstat** %6, align 8
  %158 = load %struct.ovl_layer*, %struct.ovl_layer** %15, align 8
  %159 = call i32 @ovl_map_dev_ino(%struct.dentry* %156, %struct.kstat* %157, %struct.ovl_layer* %158)
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %191

163:                                              ; preds = %155
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = load i32, i32* %10, align 4
  %168 = call i64 @OVL_TYPE_MERGE(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = load %struct.kstat*, %struct.kstat** %6, align 8
  %172 = getelementptr inbounds %struct.kstat, %struct.kstat* %171, i32 0, i32 0
  store i32 1, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %166, %163
  %174 = load i32, i32* %13, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %190, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* @OVL_INDEX, align 4
  %178 = load %struct.dentry*, %struct.dentry** %9, align 8
  %179 = call i32 @d_inode(%struct.dentry* %178)
  %180 = call i64 @ovl_test_flag(i32 %177, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load %struct.dentry*, %struct.dentry** %9, align 8
  %184 = getelementptr inbounds %struct.dentry, %struct.dentry* %183, i32 0, i32 0
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.kstat*, %struct.kstat** %6, align 8
  %189 = getelementptr inbounds %struct.kstat, %struct.kstat* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %182, %176, %173
  br label %191

191:                                              ; preds = %190, %162, %148, %93, %50
  %192 = load %struct.cred*, %struct.cred** %12, align 8
  %193 = call i32 @revert_creds(%struct.cred* %192)
  %194 = load i32, i32* %16, align 4
  ret i32 %194
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @ovl_same_sb(i32) #1

declare dso_local i32 @ovl_is_metacopy_dentry(%struct.dentry*) #1

declare dso_local i32 @ovl_path_real(%struct.dentry*, %struct.path*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i32 @vfs_getattr(%struct.path*, %struct.kstat*, i32, i32) #1

declare dso_local i64 @ovl_xino_bits(i32) #1

declare dso_local i32 @OVL_TYPE_UPPER(i32) #1

declare dso_local %struct.ovl_layer* @ovl_layer_lower(%struct.dentry*) #1

declare dso_local i64 @OVL_TYPE_ORIGIN(i32) #1

declare dso_local i32 @ovl_path_lower(%struct.dentry*, %struct.path*) #1

declare dso_local i64 @ovl_test_flag(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @ovl_verify_lower(i32) #1

declare dso_local i64 @ovl_dentry_lowerdata(%struct.dentry*) #1

declare dso_local i32 @ovl_path_lowerdata(%struct.dentry*, %struct.path*) #1

declare dso_local i32 @ovl_map_dev_ino(%struct.dentry*, %struct.kstat*, %struct.ovl_layer*) #1

declare dso_local i64 @OVL_TYPE_MERGE(i32) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
