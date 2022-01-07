; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_find_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_find_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd_file = type { i32 }
%struct.nfs4_stid = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RD_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfsd_file* (%struct.nfs4_stid*, i32)* @nfs4_find_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfsd_file* @nfs4_find_file(%struct.nfs4_stid* %0, i32 %1) #0 {
  %3 = alloca %struct.nfsd_file*, align 8
  %4 = alloca %struct.nfs4_stid*, align 8
  %5 = alloca i32, align 4
  store %struct.nfs4_stid* %0, %struct.nfs4_stid** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.nfs4_stid*, %struct.nfs4_stid** %4, align 8
  %7 = icmp ne %struct.nfs4_stid* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store %struct.nfsd_file* null, %struct.nfsd_file** %3, align 8
  br label %48

9:                                                ; preds = %2
  %10 = load %struct.nfs4_stid*, %struct.nfs4_stid** %4, align 8
  %11 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %47 [
    i32 130, label %13
    i32 128, label %32
    i32 129, label %32
  ]

13:                                               ; preds = %9
  %14 = load %struct.nfs4_stid*, %struct.nfs4_stid** %4, align 8
  %15 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store %struct.nfsd_file* null, %struct.nfsd_file** %3, align 8
  br label %48

25:                                               ; preds = %13
  %26 = load %struct.nfs4_stid*, %struct.nfs4_stid** %4, align 8
  %27 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.nfsd_file* @nfsd_file_get(i32 %30)
  store %struct.nfsd_file* %31, %struct.nfsd_file** %3, align 8
  br label %48

32:                                               ; preds = %9, %9
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @RD_STATE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.nfs4_stid*, %struct.nfs4_stid** %4, align 8
  %39 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call %struct.nfsd_file* @find_readable_file(%struct.TYPE_3__* %40)
  store %struct.nfsd_file* %41, %struct.nfsd_file** %3, align 8
  br label %48

42:                                               ; preds = %32
  %43 = load %struct.nfs4_stid*, %struct.nfs4_stid** %4, align 8
  %44 = getelementptr inbounds %struct.nfs4_stid, %struct.nfs4_stid* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call %struct.nfsd_file* @find_writeable_file(%struct.TYPE_3__* %45)
  store %struct.nfsd_file* %46, %struct.nfsd_file** %3, align 8
  br label %48

47:                                               ; preds = %9
  store %struct.nfsd_file* null, %struct.nfsd_file** %3, align 8
  br label %48

48:                                               ; preds = %47, %42, %37, %25, %24, %8
  %49 = load %struct.nfsd_file*, %struct.nfsd_file** %3, align 8
  ret %struct.nfsd_file* %49
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.nfsd_file* @nfsd_file_get(i32) #1

declare dso_local %struct.nfsd_file* @find_readable_file(%struct.TYPE_3__*) #1

declare dso_local %struct.nfsd_file* @find_writeable_file(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
