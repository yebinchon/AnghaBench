; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfs2svc_encode_fattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfsxdr.c_nfs2svc_encode_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { i32 }
%struct.kstat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nfs2svc_encode_fattr(%struct.svc_rqst* %0, i32* %1, %struct.svc_fh* %2, %struct.kstat* %3) #0 {
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca %struct.kstat*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %7, align 8
  store %struct.kstat* %3, %struct.kstat** %8, align 8
  %9 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %12 = load %struct.kstat*, %struct.kstat** %8, align 8
  %13 = call i32* @encode_fattr(%struct.svc_rqst* %9, i32* %10, %struct.svc_fh* %11, %struct.kstat* %12)
  ret i32* %13
}

declare dso_local i32* @encode_fattr(%struct.svc_rqst*, i32*, %struct.svc_fh*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
