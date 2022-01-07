; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_sys.c_prctl_set_mm_exe_file.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_sys.c_prctl_set_mm_exe_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { %struct.TYPE_5__*, %struct.vm_area_struct* }
%struct.TYPE_5__ = type { i32 }
%struct.fd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.file = type { i32 }
%struct.inode = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32)* @prctl_set_mm_exe_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prctl_set_mm_exe_file(%struct.mm_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fd, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fd, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.TYPE_6__* @fdget(i32 %13)
  %15 = getelementptr inbounds %struct.fd, %struct.fd* %11, i32 0, i32 0
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %15, align 8
  %16 = bitcast %struct.fd* %6 to i8*
  %17 = bitcast %struct.fd* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EBADF, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %119

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = call %struct.inode* @file_inode(%struct.TYPE_6__* %26)
  store %struct.inode* %27, %struct.inode** %9, align 8
  %28 = load i32, i32* @EACCES, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %10, align 4
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @S_ISREG(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i64 @path_noexec(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %24
  br label %108

42:                                               ; preds = %35
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = load i32, i32* @MAY_EXEC, align 4
  %45 = call i32 @inode_permission(%struct.inode* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %108

49:                                               ; preds = %42
  %50 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %51 = call %struct.file* @get_mm_exe_file(%struct.mm_struct* %50)
  store %struct.file* %51, %struct.file** %8, align 8
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.file*, %struct.file** %8, align 8
  %55 = icmp ne %struct.file* %54, null
  br i1 %55, label %56, label %93

56:                                               ; preds = %49
  %57 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %58 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %57, i32 0, i32 0
  %59 = call i32 @down_read(i32* %58)
  %60 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %61 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %60, i32 0, i32 2
  %62 = load %struct.vm_area_struct*, %struct.vm_area_struct** %61, align 8
  store %struct.vm_area_struct* %62, %struct.vm_area_struct** %12, align 8
  br label %63

63:                                               ; preds = %83, %56
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %65 = icmp ne %struct.vm_area_struct* %64, null
  br i1 %65, label %66, label %87

66:                                               ; preds = %63
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %68 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = icmp ne %struct.TYPE_5__* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %83

72:                                               ; preds = %66
  %73 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %74 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.file*, %struct.file** %8, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  %79 = call i64 @path_equal(i32* %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  br label %113

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %71
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %85 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %84, i32 0, i32 1
  %86 = load %struct.vm_area_struct*, %struct.vm_area_struct** %85, align 8
  store %struct.vm_area_struct* %86, %struct.vm_area_struct** %12, align 8
  br label %63

87:                                               ; preds = %63
  %88 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %89 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %88, i32 0, i32 0
  %90 = call i32 @up_read(i32* %89)
  %91 = load %struct.file*, %struct.file** %8, align 8
  %92 = call i32 @fput(%struct.file* %91)
  br label %93

93:                                               ; preds = %87, %49
  store i32 0, i32* %10, align 4
  %94 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = call i32 @get_file(%struct.TYPE_6__* %95)
  %97 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %98 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = call %struct.file* @xchg(i32* %98, %struct.TYPE_6__* %100)
  store %struct.file* %101, %struct.file** %7, align 8
  %102 = load %struct.file*, %struct.file** %7, align 8
  %103 = icmp ne %struct.file* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %93
  %105 = load %struct.file*, %struct.file** %7, align 8
  %106 = call i32 @fput(%struct.file* %105)
  br label %107

107:                                              ; preds = %104, %93
  br label %108

108:                                              ; preds = %113, %107, %48, %41
  %109 = getelementptr inbounds %struct.fd, %struct.fd* %6, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call i32 @fdput(%struct.TYPE_6__* %110)
  %112 = load i32, i32* %10, align 4
  store i32 %112, i32* %3, align 4
  br label %119

113:                                              ; preds = %81
  %114 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %115 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %114, i32 0, i32 0
  %116 = call i32 @up_read(i32* %115)
  %117 = load %struct.file*, %struct.file** %8, align 8
  %118 = call i32 @fput(%struct.file* %117)
  br label %108

119:                                              ; preds = %108, %21
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.TYPE_6__* @fdget(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.inode* @file_inode(%struct.TYPE_6__*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i64 @path_noexec(i32*) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local %struct.file* @get_mm_exe_file(%struct.mm_struct*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @path_equal(i32*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @get_file(%struct.TYPE_6__*) #1

declare dso_local %struct.file* @xchg(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @fdput(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
