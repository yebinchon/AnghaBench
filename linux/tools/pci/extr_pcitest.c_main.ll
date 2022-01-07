; ModuleID = '/home/carl/AnghaBench/linux/tools/pci/extr_pcitest.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/pci/extr_pcitest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_test = type { i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Fail to allocate memory for pci_test\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"/dev/pci-endpoint-test.0\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"D:b:m:x:i:Ilhrwcs:\00", align 1
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [526 x i8] c"usage: %s [options]\0AOptions:\0A\09-D <dev>\09\09PCI endpoint test device {default: /dev/pci-endpoint-test.0}\0A\09-b <bar num>\09\09BAR test (bar number between 0..5)\0A\09-m <msi num>\09\09MSI test (msi number between 1..32)\0A\09-x <msix num>\09\09MSI-X test (msix number between 1..2048)\0A\09-i <irq type>\09\09Set IRQ type (0 - Legacy, 1 - MSI, 2 - MSI-X)\0A\09-I\09\09\09Get current IRQ type configured\0A\09-l\09\09\09Legacy IRQ test\0A\09-r\09\09\09Read buffer test\0A\09-w\09\09\09Write buffer test\0A\09-c\09\09\09Copy buffer test\0A\09-s <size>\09\09Size of buffer {default: 100KB}\0A\09-h\09\09\09Print this help message\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci_test*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = call %struct.pci_test* @calloc(i32 1, i32 56)
  store %struct.pci_test* %8, %struct.pci_test** %7, align 8
  %9 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %10 = icmp ne %struct.pci_test* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = call i32 @perror(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %137

15:                                               ; preds = %2
  %16 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %17 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %19 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %18, i32 0, i32 1
  store i32 102400, i32* %19, align 4
  %20 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %21 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %20, i32 0, i32 2
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %22

22:                                               ; preds = %119, %116, %113, %110, %107, %104, %87, %70, %51, %50, %30, %15
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @EOF, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %134

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %125 [
    i32 68, label %30
    i32 98, label %34
    i32 108, label %51
    i32 109, label %54
    i32 120, label %71
    i32 105, label %88
    i32 73, label %107
    i32 114, label %110
    i32 119, label %113
    i32 99, label %116
    i32 115, label %119
    i32 104, label %124
  ]

30:                                               ; preds = %28
  %31 = load i8*, i8** @optarg, align 8
  %32 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %33 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  br label %22

34:                                               ; preds = %28
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i8* @atoi(i8* %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %39 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %41 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %46 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %47, 5
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %34
  br label %126

50:                                               ; preds = %44
  br label %22

51:                                               ; preds = %28
  %52 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %53 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %52, i32 0, i32 3
  store i32 1, i32* %53, align 8
  br label %22

54:                                               ; preds = %28
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i8* @atoi(i8* %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %59 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %61 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 1
  br i1 %63, label %69, label %64

64:                                               ; preds = %54
  %65 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %66 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 32
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %54
  br label %126

70:                                               ; preds = %64
  br label %22

71:                                               ; preds = %28
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i8* @atoi(i8* %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %76 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %78 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %86, label %81

81:                                               ; preds = %71
  %82 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %83 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = icmp sgt i32 %84, 2048
  br i1 %85, label %86, label %87

86:                                               ; preds = %81, %71
  br label %126

87:                                               ; preds = %81
  br label %22

88:                                               ; preds = %28
  %89 = load i8*, i8** @optarg, align 8
  %90 = call i8* @atoi(i8* %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %93 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %95 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %88
  %99 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %100 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 2
  br i1 %102, label %103, label %104

103:                                              ; preds = %98, %88
  br label %126

104:                                              ; preds = %98
  %105 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %106 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %105, i32 0, i32 7
  store i32 1, i32* %106, align 8
  br label %22

107:                                              ; preds = %28
  %108 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %109 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %108, i32 0, i32 8
  store i32 1, i32* %109, align 4
  br label %22

110:                                              ; preds = %28
  %111 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %112 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %111, i32 0, i32 9
  store i32 1, i32* %112, align 8
  br label %22

113:                                              ; preds = %28
  %114 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %115 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %114, i32 0, i32 10
  store i32 1, i32* %115, align 4
  br label %22

116:                                              ; preds = %28
  %117 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %118 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %117, i32 0, i32 11
  store i32 1, i32* %118, align 8
  br label %22

119:                                              ; preds = %28
  %120 = load i8*, i8** @optarg, align 8
  %121 = call i32 @strtoul(i8* %120, i32* null, i32 0)
  %122 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %123 = getelementptr inbounds %struct.pci_test, %struct.pci_test* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %22

124:                                              ; preds = %28
  br label %125

125:                                              ; preds = %28, %124
  br label %126

126:                                              ; preds = %125, %103, %86, %69, %49
  %127 = load i32, i32* @stderr, align 4
  %128 = load i8**, i8*** %5, align 8
  %129 = getelementptr inbounds i8*, i8** %128, i64 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 @fprintf(i32 %127, i8* getelementptr inbounds ([526 x i8], [526 x i8]* @.str.3, i64 0, i64 0), i8* %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %137

134:                                              ; preds = %22
  %135 = load %struct.pci_test*, %struct.pci_test** %7, align 8
  %136 = call i32 @run_test(%struct.pci_test* %135)
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %134, %126, %11
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.pci_test* @calloc(i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @run_test(%struct.pci_test*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
