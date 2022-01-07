; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_log_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_gfs2_log_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32 }
%struct.page = type { i32 }
%struct.bio = type { i32 }

@REQ_OP_WRITE = common dso_local global i32 0, align 4
@gfs2_end_log_write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_log_write(%struct.gfs2_sbd* %0, %struct.page* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio*, align 8
  %12 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %16 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %15, i32 0, i32 0
  %17 = load i32, i32* @REQ_OP_WRITE, align 4
  %18 = load i32, i32* @gfs2_end_log_write, align 4
  %19 = call %struct.bio* @gfs2_log_get_bio(%struct.gfs2_sbd* %13, i32 %14, i32* %16, i32 %17, i32 %18, i32 0)
  store %struct.bio* %19, %struct.bio** %11, align 8
  %20 = load %struct.bio*, %struct.bio** %11, align 8
  %21 = load %struct.page*, %struct.page** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @bio_add_page(%struct.bio* %20, %struct.page* %21, i32 %22, i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %5
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %31 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %30, i32 0, i32 0
  %32 = load i32, i32* @REQ_OP_WRITE, align 4
  %33 = load i32, i32* @gfs2_end_log_write, align 4
  %34 = call %struct.bio* @gfs2_log_get_bio(%struct.gfs2_sbd* %28, i32 %29, i32* %31, i32 %32, i32 %33, i32 1)
  store %struct.bio* %34, %struct.bio** %11, align 8
  %35 = load %struct.bio*, %struct.bio** %11, align 8
  %36 = load %struct.page*, %struct.page** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @bio_add_page(%struct.bio* %35, %struct.page* %36, i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  br label %44

44:                                               ; preds = %27, %5
  ret void
}

declare dso_local %struct.bio* @gfs2_log_get_bio(%struct.gfs2_sbd*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
