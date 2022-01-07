; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_dup_copy_fields.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_dup_copy_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_copy = type { i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_copy*, %struct.nfsd4_copy*)* @dup_copy_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dup_copy_fields(%struct.nfsd4_copy* %0, %struct.nfsd4_copy* %1) #0 {
  %3 = alloca %struct.nfsd4_copy*, align 8
  %4 = alloca %struct.nfsd4_copy*, align 8
  store %struct.nfsd4_copy* %0, %struct.nfsd4_copy** %3, align 8
  store %struct.nfsd4_copy* %1, %struct.nfsd4_copy** %4, align 8
  %5 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %6 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %5, i32 0, i32 9
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %9 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 8
  %10 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %11 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %14 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %16 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %19 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %21 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %24 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %26 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %25, i32 0, i32 5
  %27 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %28 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %27, i32 0, i32 5
  %29 = call i32 @memcpy(i32* %26, i32* %28, i32 4)
  %30 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %31 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %30, i32 0, i32 4
  %32 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %33 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %32, i32 0, i32 4
  %34 = call i32 @memcpy(i32* %31, i32* %33, i32 4)
  %35 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %36 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %39 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %41 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @nfsd_file_get(i8* %42)
  %44 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %45 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %47 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i8* @nfsd_file_get(i8* %48)
  %50 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %51 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %4, align 8
  %53 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %52, i32 0, i32 0
  %54 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %3, align 8
  %55 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %54, i32 0, i32 0
  %56 = call i32 @memcpy(i32* %53, i32* %55, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @nfsd_file_get(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
