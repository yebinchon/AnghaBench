; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_end_grace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfsd4_end_grace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_net = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsd4_end_grace(%struct.nfsd_net* %0) #0 {
  %2 = alloca %struct.nfsd_net*, align 8
  store %struct.nfsd_net* %0, %struct.nfsd_net** %2, align 8
  %3 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %4 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %16

8:                                                ; preds = %1
  %9 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %10 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %12 = call i32 @nfsd4_record_grace_done(%struct.nfsd_net* %11)
  %13 = load %struct.nfsd_net*, %struct.nfsd_net** %2, align 8
  %14 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %13, i32 0, i32 1
  %15 = call i32 @locks_end_grace(i32* %14)
  br label %16

16:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @nfsd4_record_grace_done(%struct.nfsd_net*) #1

declare dso_local i32 @locks_end_grace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
