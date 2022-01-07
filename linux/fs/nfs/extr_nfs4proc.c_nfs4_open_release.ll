; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_open_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_open_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_opendata = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfs4_state = type { i32 }

@NFS4_OPEN_RESULT_CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfs4_open_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_open_release(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nfs4_opendata*, align 8
  %4 = alloca %struct.nfs4_state*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.nfs4_opendata*
  store %struct.nfs4_opendata* %6, %struct.nfs4_opendata** %3, align 8
  store %struct.nfs4_state* null, %struct.nfs4_state** %4, align 8
  %7 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %8 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %14 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %19 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %12
  br label %46

23:                                               ; preds = %17
  %24 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %25 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NFS4_OPEN_RESULT_CONFIRM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %46

32:                                               ; preds = %23
  %33 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %34 = call %struct.nfs4_state* @nfs4_opendata_to_nfs4_state(%struct.nfs4_opendata* %33)
  store %struct.nfs4_state* %34, %struct.nfs4_state** %4, align 8
  %35 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %36 = call i32 @IS_ERR(%struct.nfs4_state* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %40 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %41 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @nfs4_close_state(%struct.nfs4_state* %39, i32 %43)
  br label %45

45:                                               ; preds = %38, %32
  br label %46

46:                                               ; preds = %45, %31, %22, %11
  %47 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %3, align 8
  %48 = call i32 @nfs4_opendata_put(%struct.nfs4_opendata* %47)
  ret void
}

declare dso_local %struct.nfs4_state* @nfs4_opendata_to_nfs4_state(%struct.nfs4_opendata*) #1

declare dso_local i32 @IS_ERR(%struct.nfs4_state*) #1

declare dso_local i32 @nfs4_close_state(%struct.nfs4_state*, i32) #1

declare dso_local i32 @nfs4_opendata_put(%struct.nfs4_opendata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
