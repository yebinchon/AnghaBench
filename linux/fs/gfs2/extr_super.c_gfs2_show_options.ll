; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.dentry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, %struct.TYPE_4__, i32, %struct.gfs2_args }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.gfs2_args = type { i32, i32, i8*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64* }

@.str = private unnamed_addr constant [6 x i8] c",meta\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"lockproto\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"locktable\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"hostdata\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c",spectator\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c",localflocks\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c",debug\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c",acl\00", align 1
@GFS2_QUOTA_DEFAULT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"account\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c",quota=%s\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c",suiddir\00", align 1
@GFS2_DATA_DEFAULT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c",data=%s\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c",discard\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c",commit=%d\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c",statfs_quantum=%d\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c",statfs_quantum=0\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c",quota_quantum=%d\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c",statfs_percent=%d\00", align 1
@GFS2_ERRORS_DEFAULT = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"withdraw\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c",errors=%s\00", align 1
@SDF_NOBARRIERS = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c",nobarrier\00", align 1
@SDF_DEMOTE = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [23 x i8] c",demote_interface_used\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c",rgrplvb\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c",loccookie\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @gfs2_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %5, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 3
  store %struct.gfs2_args* %17, %struct.gfs2_args** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %20 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @is_ancestor(%struct.dentry* %18, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = call i32 @seq_puts(%struct.seq_file* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %2
  %28 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %29 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %28, i32 0, i32 14
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %37 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %36, i32 0, i32 14
  %38 = load i64*, i64** %37, align 8
  %39 = call i32 @seq_show_option(%struct.seq_file* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64* %38)
  br label %40

40:                                               ; preds = %34, %27
  %41 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %42 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %41, i32 0, i32 13
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %50 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %49, i32 0, i32 13
  %51 = load i64*, i64** %50, align 8
  %52 = call i32 @seq_show_option(%struct.seq_file* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64* %51)
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %55 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %54, i32 0, i32 12
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %62 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %63 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %62, i32 0, i32 12
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 @seq_show_option(%struct.seq_file* %61, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64* %64)
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %68 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %67, i32 0, i32 11
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %73 = call i32 @seq_puts(%struct.seq_file* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %76 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %75, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %81 = call i32 @seq_puts(%struct.seq_file* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %84 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %83, i32 0, i32 9
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %89 = call i32 @seq_puts(%struct.seq_file* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %82
  %91 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %92 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = call i32 @seq_puts(%struct.seq_file* %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %90
  %99 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %100 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @GFS2_QUOTA_DEFAULT, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %98
  %105 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %106 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %111 [
    i32 129, label %108
    i32 130, label %109
    i32 128, label %110
  ]

108:                                              ; preds = %104
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %112

109:                                              ; preds = %104
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %112

110:                                              ; preds = %104
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %112

111:                                              ; preds = %104
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  br label %112

112:                                              ; preds = %111, %110, %109, %108
  %113 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %112, %98
  %117 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %118 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %123 = call i32 @seq_puts(%struct.seq_file* %122, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %116
  %125 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %126 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @GFS2_DATA_DEFAULT, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %124
  %131 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %132 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  switch i32 %133, label %136 [
    i32 133, label %134
    i32 134, label %135
  ]

134:                                              ; preds = %130
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  br label %137

135:                                              ; preds = %130
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8** %9, align 8
  br label %137

136:                                              ; preds = %130
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %137

137:                                              ; preds = %136, %135, %134
  %138 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8* %139)
  br label %141

141:                                              ; preds = %137, %124
  %142 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %143 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %148 = call i32 @seq_puts(%struct.seq_file* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  br label %149

149:                                              ; preds = %146, %141
  %150 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %151 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 30
  br i1 %155, label %156, label %160

156:                                              ; preds = %149
  %157 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %158 = load i32, i32* %7, align 4
  %159 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %156, %149
  %161 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %162 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 30
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 %169)
  br label %181

171:                                              ; preds = %160
  %172 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %173 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %179 = call i32 @seq_puts(%struct.seq_file* %178, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  br label %180

180:                                              ; preds = %177, %171
  br label %181

181:                                              ; preds = %180, %167
  %182 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %183 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 60
  br i1 %187, label %188, label %192

188:                                              ; preds = %181
  %189 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %190 = load i32, i32* %7, align 4
  %191 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %190)
  br label %192

192:                                              ; preds = %188, %181
  %193 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %194 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %199 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %200 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %198, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i8* %201)
  br label %203

203:                                              ; preds = %197, %192
  %204 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %205 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @GFS2_ERRORS_DEFAULT, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %203
  %210 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %211 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  switch i32 %212, label %215 [
    i32 131, label %213
    i32 132, label %214
  ]

213:                                              ; preds = %209
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0), i8** %10, align 8
  br label %216

214:                                              ; preds = %209
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i8** %10, align 8
  br label %216

215:                                              ; preds = %209
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %10, align 8
  br label %216

216:                                              ; preds = %215, %214, %213
  %217 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %218 = load i8*, i8** %10, align 8
  %219 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %217, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* %218)
  br label %220

220:                                              ; preds = %216, %203
  %221 = load i32, i32* @SDF_NOBARRIERS, align 4
  %222 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %223 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %222, i32 0, i32 0
  %224 = call i64 @test_bit(i32 %221, i32* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %228 = call i32 @seq_puts(%struct.seq_file* %227, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  br label %229

229:                                              ; preds = %226, %220
  %230 = load i32, i32* @SDF_DEMOTE, align 4
  %231 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %232 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %231, i32 0, i32 0
  %233 = call i64 @test_bit(i32 %230, i32* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %229
  %236 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %237 = call i32 @seq_puts(%struct.seq_file* %236, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %229
  %239 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %240 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %245 = call i32 @seq_puts(%struct.seq_file* %244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  br label %246

246:                                              ; preds = %243, %238
  %247 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %248 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %247, i32 0, i32 4
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %253 = call i32 @seq_puts(%struct.seq_file* %252, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0))
  br label %254

254:                                              ; preds = %251, %246
  ret i32 0
}

declare dso_local i64 @is_ancestor(%struct.dentry*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_show_option(%struct.seq_file*, i8*, i64*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
