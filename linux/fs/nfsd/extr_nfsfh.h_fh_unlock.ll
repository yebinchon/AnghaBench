; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.h_fh_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsfh.h_fh_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.svc_fh*)* @fh_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fh_unlock(%struct.svc_fh* %0) #0 {
  %2 = alloca %struct.svc_fh*, align 8
  store %struct.svc_fh* %0, %struct.svc_fh** %2, align 8
  %3 = load %struct.svc_fh*, %struct.svc_fh** %2, align 8
  %4 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.svc_fh*, %struct.svc_fh** %2, align 8
  %9 = call i32 @fill_post_wcc(%struct.svc_fh* %8)
  %10 = load %struct.svc_fh*, %struct.svc_fh** %2, align 8
  %11 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @d_inode(i32 %12)
  %14 = call i32 @inode_unlock(i32 %13)
  %15 = load %struct.svc_fh*, %struct.svc_fh** %2, align 8
  %16 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @fill_post_wcc(%struct.svc_fh*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @d_inode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
