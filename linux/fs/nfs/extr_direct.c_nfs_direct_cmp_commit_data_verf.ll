; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_cmp_commit_data_verf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_cmp_commit_data_verf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_direct_req = type { i32 }
%struct.nfs_commit_data = type { i32, i32, i32 }
%struct.nfs_writeverf = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_direct_req*, %struct.nfs_commit_data*)* @nfs_direct_cmp_commit_data_verf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_direct_cmp_commit_data_verf(%struct.nfs_direct_req* %0, %struct.nfs_commit_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_direct_req*, align 8
  %5 = alloca %struct.nfs_commit_data*, align 8
  %6 = alloca %struct.nfs_writeverf*, align 8
  store %struct.nfs_direct_req* %0, %struct.nfs_direct_req** %4, align 8
  store %struct.nfs_commit_data* %1, %struct.nfs_commit_data** %5, align 8
  %7 = load %struct.nfs_direct_req*, %struct.nfs_direct_req** %4, align 8
  %8 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %9 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %12 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nfs_writeverf* @nfs_direct_select_verf(%struct.nfs_direct_req* %7, i32 %10, i32 %13)
  store %struct.nfs_writeverf* %14, %struct.nfs_writeverf** %6, align 8
  %15 = load %struct.nfs_writeverf*, %struct.nfs_writeverf** %6, align 8
  %16 = getelementptr inbounds %struct.nfs_writeverf, %struct.nfs_writeverf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.nfs_writeverf*, %struct.nfs_writeverf** %6, align 8
  %22 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %5, align 8
  %23 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %22, i32 0, i32 0
  %24 = call i32 @nfs_direct_cmp_verf(%struct.nfs_writeverf* %21, i32* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.nfs_writeverf* @nfs_direct_select_verf(%struct.nfs_direct_req*, i32, i32) #1

declare dso_local i32 @nfs_direct_cmp_verf(%struct.nfs_writeverf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
