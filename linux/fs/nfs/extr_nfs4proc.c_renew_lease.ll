; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_renew_lease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_renew_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { %struct.nfs_client* }
%struct.nfs_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_server*, i64)* @renew_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @renew_lease(%struct.nfs_server* %0, i64 %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfs_client*, align 8
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %6, i32 0, i32 0
  %8 = load %struct.nfs_client*, %struct.nfs_client** %7, align 8
  store %struct.nfs_client* %8, %struct.nfs_client** %5, align 8
  %9 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %10 = call i32 @nfs4_has_session(%struct.nfs_client* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load %struct.nfs_client*, %struct.nfs_client** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @do_renew_lease(%struct.nfs_client* %13, i64 %14)
  br label %16

16:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @nfs4_has_session(%struct.nfs_client*) #1

declare dso_local i32 @do_renew_lease(%struct.nfs_client*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
