; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memfd.c_memfd_add_seals.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memfd.c_memfd_add_seals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.inode = type { i32 }

@FMODE_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@F_ALL_SEALS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@F_SEAL_SEAL = common dso_local global i32 0, align 4
@F_SEAL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @memfd_add_seals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memfd_add_seals(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.inode* @file_inode(%struct.file* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FMODE_WRITE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %90

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i64, i64* @F_ALL_SEALS, align 8
  %23 = trunc i64 %22 to i32
  %24 = xor i32 %23, -1
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %90

30:                                               ; preds = %20
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = call i32 @inode_lock(%struct.inode* %31)
  %33 = load %struct.file*, %struct.file** %4, align 8
  %34 = call i32* @memfd_file_seals_ptr(%struct.file* %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %8, align 4
  br label %86

40:                                               ; preds = %30
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @F_SEAL_SEAL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %86

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @F_SEAL_WRITE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @F_SEAL_WRITE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %54
  %61 = load %struct.file*, %struct.file** %4, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mapping_deny_writable(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %86

68:                                               ; preds = %60
  %69 = load %struct.file*, %struct.file** %4, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memfd_wait_for_pins(i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load %struct.file*, %struct.file** %4, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mapping_allow_writable(i32 %78)
  br label %86

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %54, %49
  %82 = load i32, i32* %5, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %81, %75, %67, %46, %37
  %87 = load %struct.inode*, %struct.inode** %6, align 8
  %88 = call i32 @inode_unlock(%struct.inode* %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %27, %17
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32* @memfd_file_seals_ptr(%struct.file*) #1

declare dso_local i32 @mapping_deny_writable(i32) #1

declare dso_local i32 @memfd_wait_for_pins(i32) #1

declare dso_local i32 @mapping_allow_writable(i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
