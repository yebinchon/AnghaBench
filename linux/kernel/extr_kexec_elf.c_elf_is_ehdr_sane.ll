; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf_is_ehdr_sane.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kexec_elf.c_elf_is_ehdr_sane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfhdr = type { i32, i32, i32, i32, i64*, i64, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"Bad program header size.\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Bad section header size.\0A\00", align 1
@EI_VERSION = common dso_local global i64 0, align 8
@EV_CURRENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Unknown ELF version.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Program headers at invalid location.\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Program headers truncated.\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Section headers at invalid location.\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Section headers truncated.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elfhdr*, i64)* @elf_is_ehdr_sane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_is_ehdr_sane(%struct.elfhdr* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elfhdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.elfhdr* %0, %struct.elfhdr** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %9 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %14 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %131

20:                                               ; preds = %12, %2
  %21 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %22 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %27 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 4
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %131

33:                                               ; preds = %25, %20
  %34 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %35 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %34, i32 0, i32 4
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @EI_VERSION, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EV_CURRENT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %33
  %43 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %44 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EV_CURRENT, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42, %33
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %131

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %54 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %53, i32 0, i32 6
  %55 = load i64, i64* %54, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %91

57:                                               ; preds = %52
  %58 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %59 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %91

62:                                               ; preds = %57
  %63 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %64 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  store i64 %67, i64* %6, align 8
  %68 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %69 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = add i64 %70, %71
  %73 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %74 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ult i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %131

79:                                               ; preds = %62
  %80 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %81 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* %5, align 8
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %131

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90, %57, %52
  %92 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %93 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = icmp ugt i64 %94, 0
  br i1 %95, label %96, label %130

96:                                               ; preds = %91
  %97 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %98 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %130

101:                                              ; preds = %96
  %102 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %103 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  store i64 %106, i64* %7, align 8
  %107 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %108 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %7, align 8
  %111 = add i64 %109, %110
  %112 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %113 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %112, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %111, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %101
  %117 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %131

118:                                              ; preds = %101
  %119 = load %struct.elfhdr*, %struct.elfhdr** %4, align 8
  %120 = getelementptr inbounds %struct.elfhdr, %struct.elfhdr* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %121, %122
  %124 = load i64, i64* %5, align 8
  %125 = icmp ugt i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %131

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129, %96, %91
  store i32 1, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %126, %116, %87, %77, %48, %31, %18
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
