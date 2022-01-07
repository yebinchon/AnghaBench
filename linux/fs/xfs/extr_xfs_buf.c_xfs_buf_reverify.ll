; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_reverify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_reverify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, i64, %struct.xfs_buf_ops* }
%struct.xfs_buf_ops = type { i32 (%struct.xfs_buf.0*)* }
%struct.xfs_buf.0 = type opaque

@XBF_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_buf_reverify(%struct.xfs_buf* %0, %struct.xfs_buf_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_buf_ops*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store %struct.xfs_buf_ops* %1, %struct.xfs_buf_ops** %5, align 8
  %6 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %7 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @XBF_DONE, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %5, align 8
  %19 = icmp ne %struct.xfs_buf_ops* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %22 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %21, i32 0, i32 2
  %23 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %22, align 8
  %24 = icmp ne %struct.xfs_buf_ops* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %2
  store i32 0, i32* %3, align 4
  br label %54

26:                                               ; preds = %20
  %27 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %5, align 8
  %28 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %29 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %28, i32 0, i32 2
  store %struct.xfs_buf_ops* %27, %struct.xfs_buf_ops** %29, align 8
  %30 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %31 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %30, i32 0, i32 2
  %32 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %31, align 8
  %33 = getelementptr inbounds %struct.xfs_buf_ops, %struct.xfs_buf_ops* %32, i32 0, i32 0
  %34 = load i32 (%struct.xfs_buf.0*)*, i32 (%struct.xfs_buf.0*)** %33, align 8
  %35 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %36 = bitcast %struct.xfs_buf* %35 to %struct.xfs_buf.0*
  %37 = call i32 %34(%struct.xfs_buf.0* %36)
  %38 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %39 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %26
  %43 = load i32, i32* @XBF_DONE, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %46 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %26
  %50 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %51 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %25
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
