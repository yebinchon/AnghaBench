; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_binfmt_elf_fdpic.c_elf_fdpic_fetch_phdrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_binfmt_elf_fdpic.c_elf_fdpic_fetch_phdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_fdpic_params = type { i32, i32, %struct.TYPE_2__, %struct.elf32_phdr* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.elf32_phdr = type { i64, i32, i32 }
%struct.file = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@PT_GNU_STACK = common dso_local global i64 0, align 8
@PF_X = common dso_local global i32 0, align 4
@ELF_FDPIC_FLAG_EXEC_STACK = common dso_local global i32 0, align 4
@ELF_FDPIC_FLAG_NOEXEC_STACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_fdpic_params*, %struct.file*)* @elf_fdpic_fetch_phdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_fdpic_fetch_phdrs(%struct.elf_fdpic_params* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_fdpic_params*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.elf32_phdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.elf_fdpic_params* %0, %struct.elf_fdpic_params** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %12 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %16 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %126

24:                                               ; preds = %2
  %25 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %26 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = zext i32 %28 to i64
  %30 = icmp ugt i64 %29, 16384
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %126

34:                                               ; preds = %24
  %35 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %36 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 4
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.elf32_phdr* @kmalloc(i64 %41, i32 %42)
  %44 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %45 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %44, i32 0, i32 3
  store %struct.elf32_phdr* %43, %struct.elf32_phdr** %45, align 8
  %46 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %47 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %46, i32 0, i32 3
  %48 = load %struct.elf32_phdr*, %struct.elf32_phdr** %47, align 8
  %49 = icmp ne %struct.elf32_phdr* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %34
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %126

53:                                               ; preds = %34
  %54 = load %struct.file*, %struct.file** %5, align 8
  %55 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %56 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %55, i32 0, i32 3
  %57 = load %struct.elf32_phdr*, %struct.elf32_phdr** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @kernel_read(%struct.file* %54, %struct.elf32_phdr* %57, i64 %58, i32* %10)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %53
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  br label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @ENOEXEC, align 4
  %74 = sub nsw i32 0, %73
  br label %75

75:                                               ; preds = %72, %70
  %76 = phi i32 [ %71, %70 ], [ %74, %72 ]
  store i32 %76, i32* %3, align 4
  br label %126

77:                                               ; preds = %53
  %78 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %79 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %78, i32 0, i32 3
  %80 = load %struct.elf32_phdr*, %struct.elf32_phdr** %79, align 8
  store %struct.elf32_phdr* %80, %struct.elf32_phdr** %6, align 8
  store i32 0, i32* %9, align 4
  br label %81

81:                                               ; preds = %120, %77
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %84 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ult i32 %82, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %81
  %89 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %90 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @PT_GNU_STACK, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %120

95:                                               ; preds = %88
  %96 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %97 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @PF_X, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i32, i32* @ELF_FDPIC_FLAG_EXEC_STACK, align 4
  %104 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %105 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %114

108:                                              ; preds = %95
  %109 = load i32, i32* @ELF_FDPIC_FLAG_NOEXEC_STACK, align 4
  %110 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %111 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %108, %102
  %115 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %116 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.elf_fdpic_params*, %struct.elf_fdpic_params** %4, align 8
  %119 = getelementptr inbounds %struct.elf_fdpic_params, %struct.elf_fdpic_params* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  br label %125

120:                                              ; preds = %94
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  %123 = load %struct.elf32_phdr*, %struct.elf32_phdr** %6, align 8
  %124 = getelementptr inbounds %struct.elf32_phdr, %struct.elf32_phdr* %123, i32 1
  store %struct.elf32_phdr* %124, %struct.elf32_phdr** %6, align 8
  br label %81

125:                                              ; preds = %114, %81
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %75, %50, %31, %21
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.elf32_phdr* @kmalloc(i64, i32) #1

declare dso_local i32 @kernel_read(%struct.file*, %struct.elf32_phdr*, i64, i32*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
