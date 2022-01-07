; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_recover.c_xlog_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_recover.c_xlog_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlog = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.xlog_rec_header = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlog*, i64, %struct.xlog_rec_header*, i64, i32)* @xlog_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlog_set_state(%struct.xlog* %0, i64 %1, %struct.xlog_rec_header* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.xlog*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.xlog_rec_header*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.xlog* %0, %struct.xlog** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.xlog_rec_header* %2, %struct.xlog_rec_header** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* %9, align 8
  %12 = load %struct.xlog*, %struct.xlog** %6, align 8
  %13 = getelementptr inbounds %struct.xlog, %struct.xlog* %12, i32 0, i32 6
  store i64 %11, i64* %13, align 8
  %14 = load i64, i64* %7, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct.xlog*, %struct.xlog** %6, align 8
  %17 = getelementptr inbounds %struct.xlog, %struct.xlog* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.xlog_rec_header*, %struct.xlog_rec_header** %8, align 8
  %19 = getelementptr inbounds %struct.xlog_rec_header, %struct.xlog_rec_header* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  %22 = load %struct.xlog*, %struct.xlog** %6, align 8
  %23 = getelementptr inbounds %struct.xlog, %struct.xlog* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.xlog*, %struct.xlog** %6, align 8
  %28 = getelementptr inbounds %struct.xlog, %struct.xlog* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %26, %5
  %32 = load %struct.xlog*, %struct.xlog** %6, align 8
  %33 = getelementptr inbounds %struct.xlog, %struct.xlog* %32, i32 0, i32 5
  %34 = load %struct.xlog_rec_header*, %struct.xlog_rec_header** %8, align 8
  %35 = getelementptr inbounds %struct.xlog_rec_header, %struct.xlog_rec_header* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be64_to_cpu(i32 %36)
  %38 = call i32 @atomic64_set(i32* %33, i32 %37)
  %39 = load %struct.xlog*, %struct.xlog** %6, align 8
  %40 = getelementptr inbounds %struct.xlog, %struct.xlog* %39, i32 0, i32 4
  %41 = load %struct.xlog_rec_header*, %struct.xlog_rec_header** %8, align 8
  %42 = getelementptr inbounds %struct.xlog_rec_header, %struct.xlog_rec_header* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be64_to_cpu(i32 %43)
  %45 = call i32 @atomic64_set(i32* %40, i32 %44)
  %46 = load %struct.xlog*, %struct.xlog** %6, align 8
  %47 = getelementptr inbounds %struct.xlog, %struct.xlog* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.xlog*, %struct.xlog** %6, align 8
  %50 = getelementptr inbounds %struct.xlog, %struct.xlog* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xlog*, %struct.xlog** %6, align 8
  %53 = getelementptr inbounds %struct.xlog, %struct.xlog* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @BBTOB(i32 %54)
  %56 = call i32 @xlog_assign_grant_head(i32* %48, i32 %51, i32 %55)
  %57 = load %struct.xlog*, %struct.xlog** %6, align 8
  %58 = getelementptr inbounds %struct.xlog, %struct.xlog* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.xlog*, %struct.xlog** %6, align 8
  %61 = getelementptr inbounds %struct.xlog, %struct.xlog* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.xlog*, %struct.xlog** %6, align 8
  %64 = getelementptr inbounds %struct.xlog, %struct.xlog* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @BBTOB(i32 %65)
  %67 = call i32 @xlog_assign_grant_head(i32* %59, i32 %62, i32 %66)
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @xlog_assign_grant_head(i32*, i32, i32) #1

declare dso_local i32 @BBTOB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
