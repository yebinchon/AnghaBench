; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c___aa_loaddata_update.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c___aa_loaddata_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_loaddata = type { i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i8* }

@AAFS_LOADDATA_REVISION = common dso_local global i64 0, align 8
@AAFS_LOADDATA_DIR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__aa_loaddata_update(%struct.aa_loaddata* %0, i64 %1) #0 {
  %3 = alloca %struct.aa_loaddata*, align 8
  %4 = alloca i64, align 8
  store %struct.aa_loaddata* %0, %struct.aa_loaddata** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.aa_loaddata*, %struct.aa_loaddata** %3, align 8
  %6 = icmp ne %struct.aa_loaddata* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @AA_BUG(i32 %8)
  %10 = load %struct.aa_loaddata*, %struct.aa_loaddata** %3, align 8
  %11 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @AA_BUG(i32 %15)
  %17 = load %struct.aa_loaddata*, %struct.aa_loaddata** %3, align 8
  %18 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @AAFS_LOADDATA_REVISION, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @AA_BUG(i32 %25)
  %27 = load %struct.aa_loaddata*, %struct.aa_loaddata** %3, align 8
  %28 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @mutex_is_locked(i32* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @AA_BUG(i32 %34)
  %36 = load %struct.aa_loaddata*, %struct.aa_loaddata** %3, align 8
  %37 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = icmp sgt i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @AA_BUG(i32 %41)
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.aa_loaddata*, %struct.aa_loaddata** %3, align 8
  %45 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.aa_loaddata*, %struct.aa_loaddata** %3, align 8
  %47 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @AAFS_LOADDATA_DIR, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.TYPE_5__* @d_inode(i32 %51)
  %53 = call i8* @current_time(%struct.TYPE_5__* %52)
  %54 = load %struct.aa_loaddata*, %struct.aa_loaddata** %3, align 8
  %55 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @AAFS_LOADDATA_DIR, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.TYPE_5__* @d_inode(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i8* %53, i8** %61, align 8
  %62 = load %struct.aa_loaddata*, %struct.aa_loaddata** %3, align 8
  %63 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @AAFS_LOADDATA_REVISION, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.TYPE_5__* @d_inode(i32 %67)
  %69 = call i8* @current_time(%struct.TYPE_5__* %68)
  %70 = load %struct.aa_loaddata*, %struct.aa_loaddata** %3, align 8
  %71 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* @AAFS_LOADDATA_REVISION, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.TYPE_5__* @d_inode(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i8* %69, i8** %77, align 8
  ret void
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i8* @current_time(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @d_inode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
