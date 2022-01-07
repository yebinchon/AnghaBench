; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_avc.c_selinux_avc_init.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_avc.c_selinux_avc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_avc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32*, i32* }

@AVC_DEF_CACHE_THRESHOLD = common dso_local global i32 0, align 4
@selinux_avc = common dso_local global %struct.selinux_avc zeroinitializer, align 8
@AVC_CACHE_SLOTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @selinux_avc_init(%struct.selinux_avc** %0) #0 {
  %2 = alloca %struct.selinux_avc**, align 8
  %3 = alloca i32, align 4
  store %struct.selinux_avc** %0, %struct.selinux_avc*** %2, align 8
  %4 = load i32, i32* @AVC_DEF_CACHE_THRESHOLD, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.selinux_avc, %struct.selinux_avc* @selinux_avc, i32 0, i32 1), align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @AVC_CACHE_SLOTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load i32*, i32** getelementptr inbounds (%struct.selinux_avc, %struct.selinux_avc* @selinux_avc, i32 0, i32 0, i32 3), align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = call i32 @INIT_HLIST_HEAD(i32* %13)
  %15 = load i32*, i32** getelementptr inbounds (%struct.selinux_avc, %struct.selinux_avc* @selinux_avc, i32 0, i32 0, i32 2), align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i32 @spin_lock_init(i32* %18)
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %5

23:                                               ; preds = %5
  %24 = call i32 @atomic_set(i32* getelementptr inbounds (%struct.selinux_avc, %struct.selinux_avc* @selinux_avc, i32 0, i32 0, i32 1), i32 0)
  %25 = call i32 @atomic_set(i32* getelementptr inbounds (%struct.selinux_avc, %struct.selinux_avc* @selinux_avc, i32 0, i32 0, i32 0), i32 0)
  %26 = load %struct.selinux_avc**, %struct.selinux_avc*** %2, align 8
  store %struct.selinux_avc* @selinux_avc, %struct.selinux_avc** %26, align 8
  ret void
}

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
