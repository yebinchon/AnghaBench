; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfs4_save_creds.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfs4_save_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cred**)* @nfs4_save_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_save_creds(%struct.cred** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cred**, align 8
  %4 = alloca %struct.cred*, align 8
  store %struct.cred** %0, %struct.cred*** %3, align 8
  %5 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %5, %struct.cred** %4, align 8
  %6 = load %struct.cred*, %struct.cred** %4, align 8
  %7 = icmp ne %struct.cred* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %23

11:                                               ; preds = %1
  %12 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %13 = load %struct.cred*, %struct.cred** %4, align 8
  %14 = getelementptr inbounds %struct.cred, %struct.cred* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %16 = load %struct.cred*, %struct.cred** %4, align 8
  %17 = getelementptr inbounds %struct.cred, %struct.cred* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.cred*, %struct.cred** %4, align 8
  %19 = call %struct.cred* @override_creds(%struct.cred* %18)
  %20 = load %struct.cred**, %struct.cred*** %3, align 8
  store %struct.cred* %19, %struct.cred** %20, align 8
  %21 = load %struct.cred*, %struct.cred** %4, align 8
  %22 = call i32 @put_cred(%struct.cred* %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %11, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local %struct.cred* @override_creds(%struct.cred*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
