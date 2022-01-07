; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_trans.h_gfs2_rg_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_trans.h_gfs2_rg_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32)* @gfs2_rg_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_rg_blocks(%struct.gfs2_inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %8 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  store %struct.gfs2_rgrpd* %11, %struct.gfs2_rgrpd** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %6, align 8
  %14 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %6, align 8
  %22 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
