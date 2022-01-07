; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.h_ocfs2_iocb_set_rw_locked.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_aops.h_ocfs2_iocb_set_rw_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kiocb*, i32)* @ocfs2_iocb_set_rw_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_iocb_set_rw_locked(%struct.kiocb* %0, i32 %1) #0 {
  %3 = alloca %struct.kiocb*, align 8
  %4 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %6 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %5, i32 0, i32 0
  %7 = bitcast i32* %6 to i64*
  %8 = call i32 @set_bit(i32 0, i64* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %13 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to i64*
  %15 = call i32 @set_bit(i32 1, i64* %14)
  br label %21

16:                                               ; preds = %2
  %17 = load %struct.kiocb*, %struct.kiocb** %3, align 8
  %18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i64*
  %20 = call i32 @clear_bit(i32 1, i64* %19)
  br label %21

21:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
