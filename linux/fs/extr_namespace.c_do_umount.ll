; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_umount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_do_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.super_block* }
%struct.super_block = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.super_block*)* }
%struct.mount = type { i32, %struct.TYPE_9__, i32 }

@MNT_EXPIRE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@MNT_FORCE = common dso_local global i32 0, align 4
@MNT_DETACH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MNT_LOCKED = common dso_local global i32 0, align 4
@event = common dso_local global i32 0, align 4
@UMOUNT_PROPAGATE = common dso_local global i32 0, align 4
@UMOUNT_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @do_umount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_umount(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mount*, %struct.mount** %4, align 8
  %9 = getelementptr inbounds %struct.mount, %struct.mount* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %6, align 8
  %12 = load %struct.mount*, %struct.mount** %4, align 8
  %13 = getelementptr inbounds %struct.mount, %struct.mount* %12, i32 0, i32 1
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @security_sb_umount(%struct.TYPE_9__* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %168

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MNT_EXPIRE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %20
  %26 = load %struct.mount*, %struct.mount** %4, align 8
  %27 = getelementptr inbounds %struct.mount, %struct.mount* %26, i32 0, i32 1
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = icmp eq %struct.TYPE_9__* %27, %33
  br i1 %34, label %42, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MNT_FORCE, align 4
  %38 = load i32, i32* @MNT_DETACH, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35, %25
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %168

45:                                               ; preds = %35
  %46 = call i32 (...) @lock_mount_hash()
  %47 = load %struct.mount*, %struct.mount** %4, align 8
  %48 = call i32 @mnt_get_count(%struct.mount* %47)
  %49 = icmp ne i32 %48, 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = call i32 (...) @unlock_mount_hash()
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %168

54:                                               ; preds = %45
  %55 = call i32 (...) @unlock_mount_hash()
  %56 = load %struct.mount*, %struct.mount** %4, align 8
  %57 = getelementptr inbounds %struct.mount, %struct.mount* %56, i32 0, i32 2
  %58 = call i32 @xchg(i32* %57, i32 1)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %168

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %20
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @MNT_FORCE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load %struct.super_block*, %struct.super_block** %6, align 8
  %71 = getelementptr inbounds %struct.super_block, %struct.super_block* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %73, align 8
  %75 = icmp ne i32 (%struct.super_block*)* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.super_block*, %struct.super_block** %6, align 8
  %78 = getelementptr inbounds %struct.super_block, %struct.super_block* %77, i32 0, i32 1
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32 (%struct.super_block*)*, i32 (%struct.super_block*)** %80, align 8
  %82 = load %struct.super_block*, %struct.super_block** %6, align 8
  %83 = call i32 %81(%struct.super_block* %82)
  br label %84

84:                                               ; preds = %76, %69, %64
  %85 = load %struct.mount*, %struct.mount** %4, align 8
  %86 = getelementptr inbounds %struct.mount, %struct.mount* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = icmp eq %struct.TYPE_9__* %86, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %84
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @MNT_DETACH, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %112, label %99

99:                                               ; preds = %94
  %100 = load %struct.super_block*, %struct.super_block** %6, align 8
  %101 = getelementptr inbounds %struct.super_block, %struct.super_block* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %104 = call i32 @ns_capable(i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @EPERM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %168

109:                                              ; preds = %99
  %110 = load %struct.super_block*, %struct.super_block** %6, align 8
  %111 = call i32 @do_umount_root(%struct.super_block* %110)
  store i32 %111, i32* %3, align 4
  br label %168

112:                                              ; preds = %94, %84
  %113 = call i32 (...) @namespace_lock()
  %114 = call i32 (...) @lock_mount_hash()
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %7, align 4
  %117 = load %struct.mount*, %struct.mount** %4, align 8
  %118 = getelementptr inbounds %struct.mount, %struct.mount* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @MNT_LOCKED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %112
  br label %164

125:                                              ; preds = %112
  %126 = load i32, i32* @event, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* @event, align 4
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @MNT_DETACH, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %125
  %133 = load %struct.mount*, %struct.mount** %4, align 8
  %134 = getelementptr inbounds %struct.mount, %struct.mount* %133, i32 0, i32 0
  %135 = call i32 @list_empty(i32* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %132
  %138 = load %struct.mount*, %struct.mount** %4, align 8
  %139 = load i32, i32* @UMOUNT_PROPAGATE, align 4
  %140 = call i32 @umount_tree(%struct.mount* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %132
  store i32 0, i32* %7, align 4
  br label %163

142:                                              ; preds = %125
  %143 = load %struct.mount*, %struct.mount** %4, align 8
  %144 = call i32 @shrink_submounts(%struct.mount* %143)
  %145 = load i32, i32* @EBUSY, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %7, align 4
  %147 = load %struct.mount*, %struct.mount** %4, align 8
  %148 = call i32 @propagate_mount_busy(%struct.mount* %147, i32 2)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %162, label %150

150:                                              ; preds = %142
  %151 = load %struct.mount*, %struct.mount** %4, align 8
  %152 = getelementptr inbounds %struct.mount, %struct.mount* %151, i32 0, i32 0
  %153 = call i32 @list_empty(i32* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %150
  %156 = load %struct.mount*, %struct.mount** %4, align 8
  %157 = load i32, i32* @UMOUNT_PROPAGATE, align 4
  %158 = load i32, i32* @UMOUNT_SYNC, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @umount_tree(%struct.mount* %156, i32 %159)
  br label %161

161:                                              ; preds = %155, %150
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %161, %142
  br label %163

163:                                              ; preds = %162, %141
  br label %164

164:                                              ; preds = %163, %124
  %165 = call i32 (...) @unlock_mount_hash()
  %166 = call i32 (...) @namespace_unlock()
  %167 = load i32, i32* %7, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %164, %109, %106, %60, %50, %42, %18
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @security_sb_umount(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @lock_mount_hash(...) #1

declare dso_local i32 @mnt_get_count(%struct.mount*) #1

declare dso_local i32 @unlock_mount_hash(...) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @do_umount_root(%struct.super_block*) #1

declare dso_local i32 @namespace_lock(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @umount_tree(%struct.mount*, i32) #1

declare dso_local i32 @shrink_submounts(%struct.mount*) #1

declare dso_local i32 @propagate_mount_busy(%struct.mount*, i32) #1

declare dso_local i32 @namespace_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
