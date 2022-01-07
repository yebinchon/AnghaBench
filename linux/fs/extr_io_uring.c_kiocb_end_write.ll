; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_io_uring.c_kiocb_end_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_io_uring.c_kiocb_end_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_kiocb = type { i32, i32 }
%struct.inode = type { i32 }

@REQ_F_ISREG = common dso_local global i32 0, align 4
@SB_FREEZE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.io_kiocb*)* @kiocb_end_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kiocb_end_write(%struct.io_kiocb* %0) #0 {
  %2 = alloca %struct.io_kiocb*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.io_kiocb* %0, %struct.io_kiocb** %2, align 8
  %4 = load %struct.io_kiocb*, %struct.io_kiocb** %2, align 8
  %5 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @REQ_F_ISREG, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.io_kiocb*, %struct.io_kiocb** %2, align 8
  %12 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @file_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %3, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SB_FREEZE_WRITE, align 4
  %19 = call i32 @__sb_writers_acquired(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.io_kiocb*, %struct.io_kiocb** %2, align 8
  %22 = getelementptr inbounds %struct.io_kiocb, %struct.io_kiocb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @file_end_write(i32 %23)
  ret void
}

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @__sb_writers_acquired(i32, i32) #1

declare dso_local i32 @file_end_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
