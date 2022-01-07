; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_cmp_verf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_direct.c_nfs_direct_cmp_verf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_writeverf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_writeverf*, %struct.nfs_writeverf*)* @nfs_direct_cmp_verf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_direct_cmp_verf(%struct.nfs_writeverf* %0, %struct.nfs_writeverf* %1) #0 {
  %3 = alloca %struct.nfs_writeverf*, align 8
  %4 = alloca %struct.nfs_writeverf*, align 8
  store %struct.nfs_writeverf* %0, %struct.nfs_writeverf** %3, align 8
  store %struct.nfs_writeverf* %1, %struct.nfs_writeverf** %4, align 8
  %5 = load %struct.nfs_writeverf*, %struct.nfs_writeverf** %3, align 8
  %6 = getelementptr inbounds %struct.nfs_writeverf, %struct.nfs_writeverf* %5, i32 0, i32 0
  %7 = load %struct.nfs_writeverf*, %struct.nfs_writeverf** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_writeverf, %struct.nfs_writeverf* %7, i32 0, i32 0
  %9 = call i32 @nfs_write_verifier_cmp(i32* %6, i32* %8)
  ret i32 %9
}

declare dso_local i32 @nfs_write_verifier_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
