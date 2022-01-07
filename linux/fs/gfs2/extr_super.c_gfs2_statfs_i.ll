; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_statfs_i.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_statfs_i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, %struct.gfs2_statfs_change_host*)* @gfs2_statfs_i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_statfs_i(%struct.gfs2_sbd* %0, %struct.gfs2_statfs_change_host* %1) #0 {
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_statfs_change_host*, align 8
  %5 = alloca %struct.gfs2_statfs_change_host*, align 8
  %6 = alloca %struct.gfs2_statfs_change_host*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %3, align 8
  store %struct.gfs2_statfs_change_host* %1, %struct.gfs2_statfs_change_host** %4, align 8
  %7 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %8 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %7, i32 0, i32 2
  store %struct.gfs2_statfs_change_host* %8, %struct.gfs2_statfs_change_host** %5, align 8
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %10 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %9, i32 0, i32 1
  store %struct.gfs2_statfs_change_host* %10, %struct.gfs2_statfs_change_host** %6, align 8
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %15 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %5, align 8
  %16 = bitcast %struct.gfs2_statfs_change_host* %14 to i8*
  %17 = bitcast %struct.gfs2_statfs_change_host* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  %18 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %6, align 8
  %19 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %22 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %6, align 8
  %26 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %29 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %6, align 8
  %33 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %36 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %40 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %43 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %2
  %47 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %48 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %2
  %50 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %51 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %54 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %59 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %62 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %49
  %64 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %65 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %4, align 8
  %70 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %63
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
