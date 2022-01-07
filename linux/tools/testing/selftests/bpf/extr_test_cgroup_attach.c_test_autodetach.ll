; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_attach.c_test_autodetach.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_attach.c_test_autodetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"/cg_autodetach\00", align 1
@BPF_CGROUP_INET_EGRESS = common dso_local global i32 0, align 4
@BPF_F_ALLOW_MULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Attaching prog[%d] to cg:egress\00", align 1
@PING_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"#autodetach:PASS\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"#autodetach:FAIL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_autodetach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_autodetach() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 4, i32* %1, align 4
  %11 = bitcast [2 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %32, %0
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = shl i32 1, %19
  %21 = call i32 @prog_load_cnt(i32 1, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %23
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %144

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %13

35:                                               ; preds = %13
  %36 = call i64 (...) @setup_cgroup_environment()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %144

39:                                               ; preds = %35
  %40 = call i32 @create_and_get_cgroup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %144

44:                                               ; preds = %39
  %45 = call i64 @join_cgroup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %144

48:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %68, %48
  %50 = load i32, i32* %6, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %52 = call i32 @ARRAY_SIZE(i32* %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %61 = load i32, i32* @BPF_F_ALLOW_MULTI, align 4
  %62 = call i64 @bpf_prog_attach(i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @log_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %144

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %49

71:                                               ; preds = %49
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @BPF_CGROUP_INET_EGRESS, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %75 = call i64 @bpf_prog_query(i32 %72, i32 %73, i32 0, i32* %2, i32* %74, i32* %1)
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* @PING_CMD, align 4
  %80 = call i64 @system(i32 %79)
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = call i8* @malloc(i32 4194304)
  store i8* %84, i8** %8, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %71
  br label %144

88:                                               ; preds = %71
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %103, %88
  %90 = load i32, i32* %6, align 4
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %92 = call i32 @ARRAY_SIZE(i32* %91)
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @close(i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %101
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %89

106:                                              ; preds = %89
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @close(i32 %107)
  store i32 0, i32* %5, align 4
  %109 = call i32 (...) @cleanup_cgroup_environment()
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %140, %106
  %111 = load i32, i32* %6, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %113 = call i32 @ARRAY_SIZE(i32* %112)
  %114 = icmp slt i32 %111, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %110
  store i32 5, i32* %9, align 4
  br label %116

116:                                              ; preds = %136, %115
  %117 = load i32, i32* %9, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @bpf_prog_get_fd_by_id(i32 %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %139

128:                                              ; preds = %119
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @close(i32 %129)
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  br label %144

134:                                              ; preds = %128
  %135 = call i32 @sleep(i32 1)
  br label %136

136:                                              ; preds = %134
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %9, align 4
  br label %116

139:                                              ; preds = %127, %116
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %6, align 4
  br label %110

143:                                              ; preds = %110
  store i32 0, i32* %7, align 4
  br label %144

144:                                              ; preds = %143, %133, %87, %64, %47, %43, %38, %30
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %163, %144
  %146 = load i32, i32* %6, align 4
  %147 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %148 = call i32 @ARRAY_SIZE(i32* %147)
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %145
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @close(i32 %160)
  br label %162

162:                                              ; preds = %156, %150
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %145

166:                                              ; preds = %145
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @close(i32 %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load i8*, i8** %8, align 8
  %174 = call i32 @free(i8* %173)
  %175 = call i32 (...) @cleanup_cgroup_environment()
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %172
  %179 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %182

180:                                              ; preds = %172
  %181 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %182

182:                                              ; preds = %180, %178
  %183 = load i32, i32* %7, align 4
  ret i32 %183
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @prog_load_cnt(i32, i32) #2

declare dso_local i64 @setup_cgroup_environment(...) #2

declare dso_local i32 @create_and_get_cgroup(i8*) #2

declare dso_local i64 @join_cgroup(i8*) #2

declare dso_local i64 @bpf_prog_attach(i32, i32, i32, i32) #2

declare dso_local i32 @log_err(i8*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @bpf_prog_query(i32, i32, i32, i32*, i32*, i32*) #2

declare dso_local i64 @system(i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @cleanup_cgroup_environment(...) #2

declare dso_local i32 @bpf_prog_get_fd_by_id(i32) #2

declare dso_local i32 @sleep(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @printf(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
