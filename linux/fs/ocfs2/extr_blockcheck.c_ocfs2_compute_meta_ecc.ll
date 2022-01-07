; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_blockcheck.c_ocfs2_compute_meta_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_blockcheck.c_ocfs2_compute_meta_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_block_check = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_compute_meta_ecc(%struct.super_block* %0, i8* %1, %struct.ocfs2_block_check* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ocfs2_block_check*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ocfs2_block_check* %2, %struct.ocfs2_block_check** %6, align 8
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call i32 @OCFS2_SB(%struct.super_block* %7)
  %9 = call i64 @ocfs2_meta_ecc(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ocfs2_block_check*, %struct.ocfs2_block_check** %6, align 8
  %17 = call i32 @ocfs2_block_check_compute(i8* %12, i32 %15, %struct.ocfs2_block_check* %16)
  br label %18

18:                                               ; preds = %11, %3
  ret void
}

declare dso_local i64 @ocfs2_meta_ecc(i32) #1

declare dso_local i32 @OCFS2_SB(%struct.super_block*) #1

declare dso_local i32 @ocfs2_block_check_compute(i8*, i32, %struct.ocfs2_block_check*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
