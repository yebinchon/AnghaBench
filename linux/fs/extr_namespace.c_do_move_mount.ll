; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_move_mount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_move_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mnt_namespace = type { i32 }
%struct.mount = type { i32, %struct.mount*, %struct.TYPE_4__, %struct.mnt_namespace*, %struct.mountpoint* }
%struct.TYPE_4__ = type { i32 }
%struct.mountpoint = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MNT_LOCKED = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.path*)* @do_move_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_move_mount(%struct.path* %0, %struct.path* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.path*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.mnt_namespace*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.mount*, align 8
  %10 = alloca %struct.mountpoint*, align 8
  %11 = alloca %struct.mountpoint*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  %14 = load %struct.path*, %struct.path** %5, align 8
  %15 = call %struct.mountpoint* @lock_mount(%struct.path* %14)
  store %struct.mountpoint* %15, %struct.mountpoint** %10, align 8
  %16 = load %struct.mountpoint*, %struct.mountpoint** %10, align 8
  %17 = call i64 @IS_ERR(%struct.mountpoint* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.mountpoint*, %struct.mountpoint** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.mountpoint* %20)
  store i32 %21, i32* %3, align 4
  br label %175

22:                                               ; preds = %2
  %23 = load %struct.path*, %struct.path** %4, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = call %struct.mount* @real_mount(%struct.TYPE_3__* %25)
  store %struct.mount* %26, %struct.mount** %8, align 8
  %27 = load %struct.path*, %struct.path** %5, align 8
  %28 = getelementptr inbounds %struct.path, %struct.path* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = call %struct.mount* @real_mount(%struct.TYPE_3__* %29)
  store %struct.mount* %30, %struct.mount** %7, align 8
  %31 = load %struct.mount*, %struct.mount** %8, align 8
  %32 = getelementptr inbounds %struct.mount, %struct.mount* %31, i32 0, i32 1
  %33 = load %struct.mount*, %struct.mount** %32, align 8
  store %struct.mount* %33, %struct.mount** %9, align 8
  %34 = load %struct.mount*, %struct.mount** %8, align 8
  %35 = call i32 @mnt_has_parent(%struct.mount* %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.mount*, %struct.mount** %8, align 8
  %37 = getelementptr inbounds %struct.mount, %struct.mount* %36, i32 0, i32 4
  %38 = load %struct.mountpoint*, %struct.mountpoint** %37, align 8
  store %struct.mountpoint* %38, %struct.mountpoint** %11, align 8
  %39 = load %struct.mount*, %struct.mount** %8, align 8
  %40 = getelementptr inbounds %struct.mount, %struct.mount* %39, i32 0, i32 3
  %41 = load %struct.mnt_namespace*, %struct.mnt_namespace** %40, align 8
  store %struct.mnt_namespace* %41, %struct.mnt_namespace** %6, align 8
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %12, align 4
  %44 = load %struct.mount*, %struct.mount** %7, align 8
  %45 = call i32 @check_mnt(%struct.mount* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %22
  br label %158

48:                                               ; preds = %22
  %49 = load %struct.mount*, %struct.mount** %8, align 8
  %50 = getelementptr inbounds %struct.mount, %struct.mount* %49, i32 0, i32 2
  %51 = call i32 @is_mounted(%struct.TYPE_4__* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %158

54:                                               ; preds = %48
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.mount*, %struct.mount** %8, align 8
  %59 = call i32 @check_mnt(%struct.mount* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %65

61:                                               ; preds = %54
  %62 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %63 = call i32 @is_anon_ns(%struct.mnt_namespace* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61, %57
  br label %158

66:                                               ; preds = %61, %57
  %67 = load %struct.mount*, %struct.mount** %8, align 8
  %68 = getelementptr inbounds %struct.mount, %struct.mount* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MNT_LOCKED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %158

75:                                               ; preds = %66
  %76 = load %struct.path*, %struct.path** %4, align 8
  %77 = getelementptr inbounds %struct.path, %struct.path* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.path*, %struct.path** %4, align 8
  %80 = getelementptr inbounds %struct.path, %struct.path* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %78, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %158

86:                                               ; preds = %75
  %87 = load %struct.path*, %struct.path** %5, align 8
  %88 = getelementptr inbounds %struct.path, %struct.path* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @d_is_dir(i64 %89)
  %91 = load %struct.path*, %struct.path** %4, align 8
  %92 = getelementptr inbounds %struct.path, %struct.path* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @d_is_dir(i64 %93)
  %95 = icmp ne i64 %90, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %158

97:                                               ; preds = %86
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.mount*, %struct.mount** %9, align 8
  %102 = call i64 @IS_MNT_SHARED(%struct.mount* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %158

105:                                              ; preds = %100, %97
  %106 = load %struct.mount*, %struct.mount** %7, align 8
  %107 = call i64 @IS_MNT_SHARED(%struct.mount* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %105
  %110 = load %struct.mount*, %struct.mount** %8, align 8
  %111 = call i64 @tree_contains_unbindable(%struct.mount* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %158

114:                                              ; preds = %109, %105
  %115 = load i32, i32* @ELOOP, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %12, align 4
  %117 = load %struct.mount*, %struct.mount** %8, align 8
  %118 = call i32 @check_for_nsfs_mounts(%struct.mount* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  br label %158

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %132, %121
  %123 = load %struct.mount*, %struct.mount** %7, align 8
  %124 = call i32 @mnt_has_parent(%struct.mount* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %122
  %127 = load %struct.mount*, %struct.mount** %7, align 8
  %128 = load %struct.mount*, %struct.mount** %8, align 8
  %129 = icmp eq %struct.mount* %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %158

131:                                              ; preds = %126
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.mount*, %struct.mount** %7, align 8
  %134 = getelementptr inbounds %struct.mount, %struct.mount* %133, i32 0, i32 1
  %135 = load %struct.mount*, %struct.mount** %134, align 8
  store %struct.mount* %135, %struct.mount** %7, align 8
  br label %122

136:                                              ; preds = %122
  %137 = load %struct.mount*, %struct.mount** %8, align 8
  %138 = load %struct.path*, %struct.path** %5, align 8
  %139 = getelementptr inbounds %struct.path, %struct.path* %138, i32 0, i32 1
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = call %struct.mount* @real_mount(%struct.TYPE_3__* %140)
  %142 = load %struct.mountpoint*, %struct.mountpoint** %10, align 8
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @attach_recursive_mnt(%struct.mount* %137, %struct.mount* %141, %struct.mountpoint* %142, i32 %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %136
  br label %158

148:                                              ; preds = %136
  %149 = load %struct.mount*, %struct.mount** %8, align 8
  %150 = getelementptr inbounds %struct.mount, %struct.mount* %149, i32 0, i32 0
  %151 = call i32 @list_del_init(i32* %150)
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %148
  %155 = load %struct.mountpoint*, %struct.mountpoint** %11, align 8
  %156 = call i32 @put_mountpoint(%struct.mountpoint* %155)
  br label %157

157:                                              ; preds = %154, %148
  br label %158

158:                                              ; preds = %157, %147, %130, %120, %113, %104, %96, %85, %74, %65, %53, %47
  %159 = load %struct.mountpoint*, %struct.mountpoint** %10, align 8
  %160 = call i32 @unlock_mount(%struct.mountpoint* %159)
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.mount*, %struct.mount** %9, align 8
  %168 = call i32 @mntput_no_expire(%struct.mount* %167)
  br label %172

169:                                              ; preds = %163
  %170 = load %struct.mnt_namespace*, %struct.mnt_namespace** %6, align 8
  %171 = call i32 @free_mnt_ns(%struct.mnt_namespace* %170)
  br label %172

172:                                              ; preds = %169, %166
  br label %173

173:                                              ; preds = %172, %158
  %174 = load i32, i32* %12, align 4
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %173, %19
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local %struct.mountpoint* @lock_mount(%struct.path*) #1

declare dso_local i64 @IS_ERR(%struct.mountpoint*) #1

declare dso_local i32 @PTR_ERR(%struct.mountpoint*) #1

declare dso_local %struct.mount* @real_mount(%struct.TYPE_3__*) #1

declare dso_local i32 @mnt_has_parent(%struct.mount*) #1

declare dso_local i32 @check_mnt(%struct.mount*) #1

declare dso_local i32 @is_mounted(%struct.TYPE_4__*) #1

declare dso_local i32 @is_anon_ns(%struct.mnt_namespace*) #1

declare dso_local i64 @d_is_dir(i64) #1

declare dso_local i64 @IS_MNT_SHARED(%struct.mount*) #1

declare dso_local i64 @tree_contains_unbindable(%struct.mount*) #1

declare dso_local i32 @check_for_nsfs_mounts(%struct.mount*) #1

declare dso_local i32 @attach_recursive_mnt(%struct.mount*, %struct.mount*, %struct.mountpoint*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @put_mountpoint(%struct.mountpoint*) #1

declare dso_local i32 @unlock_mount(%struct.mountpoint*) #1

declare dso_local i32 @mntput_no_expire(%struct.mount*) #1

declare dso_local i32 @free_mnt_ns(%struct.mnt_namespace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
