; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_current_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_current_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.timespec64 = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"current_time() called with uninitialized super_block in the inode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @current_time(%struct.inode* %0) #0 {
  %2 = alloca %struct.timespec64, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.timespec64, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %5 = call i32 @ktime_get_coarse_real_ts64(%struct.timespec64* %4)
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %16 = bitcast %struct.timespec64* %2 to i8*
  %17 = bitcast %struct.timespec64* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @timestamp_truncate(i32 %21, %struct.inode* %19)
  %23 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %2, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %14
  %25 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %2, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  ret i32 %26
}

declare dso_local i32 @ktime_get_coarse_real_ts64(%struct.timespec64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timestamp_truncate(i32, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
