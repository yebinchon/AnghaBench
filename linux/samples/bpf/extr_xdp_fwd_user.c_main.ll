; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_fwd_user.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_xdp_fwd_user.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_load_attr = type { i8*, i32 }
%struct.bpf_program = type { i32 }
%struct.bpf_object = type { i32 }

@BPF_PROG_TYPE_XDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"xdp_fwd\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c":dD\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"xdp_fwd_direct\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%s_kern.o\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"error accessing file %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Does kernel support devmap lookup?\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"program not found: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"xdp_tx_ports\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"map not found: %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"Invalid arg\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.bpf_prog_load_attr, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bpf_program*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bpf_object*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %21 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %6, i32 0, i32 0
  store i8* null, i8** %21, align 8
  %22 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %6, i32 0, i32 1
  %23 = load i32, i32* @BPF_PROG_TYPE_XDP, align 4
  store i32 %23, i32* %22, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i32 -1, i32* %10, align 4
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %28

28:                                               ; preds = %43, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @getopt(i32 %29, i8** %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %14, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load i32, i32* %14, align 4
  switch i32 %34, label %37 [
    i32 100, label %35
    i32 68, label %36
  ]

35:                                               ; preds = %33
  store i32 0, i32* %18, align 4
  br label %43

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %43

37:                                               ; preds = %33
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @basename(i8* %40)
  %42 = call i32 @usage(i32 %41)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %165

43:                                               ; preds = %36, %35
  br label %28

44:                                               ; preds = %28
  %45 = load i32, i32* @optind, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @basename(i8* %51)
  %53 = call i32 @usage(i32 %52)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %165

54:                                               ; preds = %44
  %55 = load i32, i32* %18, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %100

57:                                               ; preds = %54
  %58 = trunc i64 %25 to i32
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @snprintf(i8* %27, i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = getelementptr inbounds %struct.bpf_prog_load_attr, %struct.bpf_prog_load_attr* %6, i32 0, i32 0
  store i8* %27, i8** %63, align 8
  %64 = load i32, i32* @O_RDONLY, align 4
  %65 = call i64 @access(i8* %27, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i32, i32* @errno, align 4
  %69 = call i8* @strerror(i32 %68)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %27, i8* %69)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %165

71:                                               ; preds = %57
  %72 = call i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr* %6, %struct.bpf_object** %13, i32* %9)
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %165

77:                                               ; preds = %71
  %78 = load %struct.bpf_object*, %struct.bpf_object** %13, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object* %78, i8* %79)
  store %struct.bpf_program* %80, %struct.bpf_program** %8, align 8
  %81 = load %struct.bpf_program*, %struct.bpf_program** %8, align 8
  %82 = call i32 @bpf_program__fd(%struct.bpf_program* %81)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = call i8* @strerror(i32 %86)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %87)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %165

89:                                               ; preds = %77
  %90 = load %struct.bpf_object*, %struct.bpf_object** %13, align 8
  %91 = call i32 @bpf_object__find_map_by_name(%struct.bpf_object* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %92 = call i32 @bpf_map__fd(i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  %96 = load i32, i32* %10, align 4
  %97 = call i8* @strerror(i32 %96)
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %97)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %165

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %54
  %101 = load i32, i32* @optind, align 4
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %160, %100
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %163

106:                                              ; preds = %102
  %107 = load i8**, i8*** %5, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @if_nametoindex(i8* %111)
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %16, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %106
  %116 = load i8**, i8*** %5, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strtoul(i8* %120, i32* null, i32 0)
  store i32 %121, i32* %16, align 4
  br label %122

122:                                              ; preds = %115, %106
  %123 = load i32, i32* %16, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* @stderr, align 4
  %127 = call i32 @fprintf(i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %165

128:                                              ; preds = %122
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %16, align 4
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @do_detach(i32 %132, i8* %137)
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %131
  %142 = load i32, i32* %17, align 4
  store i32 %142, i32* %19, align 4
  br label %143

143:                                              ; preds = %141, %131
  br label %159

144:                                              ; preds = %128
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i8**, i8*** %5, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @do_attach(i32 %145, i32 %146, i32 %147, i8* %152)
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %144
  %157 = load i32, i32* %17, align 4
  store i32 %157, i32* %19, align 4
  br label %158

158:                                              ; preds = %156, %144
  br label %159

159:                                              ; preds = %158, %143
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  br label %102

163:                                              ; preds = %102
  %164 = load i32, i32* %19, align 4
  store i32 %164, i32* %3, align 4
  store i32 1, i32* %20, align 4
  br label %165

165:                                              ; preds = %163, %125, %95, %85, %75, %67, %48, %37
  %166 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @usage(i32) #2

declare dso_local i32 @basename(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i64 @access(i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @bpf_prog_load_xattr(%struct.bpf_prog_load_attr*, %struct.bpf_object**, i32*) #2

declare dso_local %struct.bpf_program* @bpf_object__find_program_by_title(%struct.bpf_object*, i8*) #2

declare dso_local i32 @bpf_program__fd(%struct.bpf_program*) #2

declare dso_local i32 @bpf_map__fd(i32) #2

declare dso_local i32 @bpf_object__find_map_by_name(%struct.bpf_object*, i8*) #2

declare dso_local i32 @if_nametoindex(i8*) #2

declare dso_local i32 @strtoul(i8*, i32*, i32) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i32 @do_detach(i32, i8*) #2

declare dso_local i32 @do_attach(i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
